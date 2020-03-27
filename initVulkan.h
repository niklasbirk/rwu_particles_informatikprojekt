#include <stdio.h>
#include <malloc.h>
#include <stdint-gcc.h>
#include "vulkan/vulkan.h"

#define GLFW_INCLUDE_VULKAN
#include "GLFW/glfw3.h"

#include "utils.h"

#define APP_NAME "Informatikprojekt - Vulkan"
#define APP_VERSION VK_MAKE_VERSION(0, 0, 0)
#define ENGINE_NAME "rwu_particles"
#define ENGINE_VERSION VK_MAKE_VERSION(0, 0, 0)

#define SUCCESS 0
#define FAILURE -1
#define ASSERT_SUCCESS(res) { if (res != SUCCESS) { printf("Error-Code: %d", res); return FAILURE; } }
#define ASSERT_VK_SUCCESS(res) { if (res != VK_SUCCESS) { printf("Error-Code: %d", res); return FAILURE; } }
#define ASSERT_GLFW_SUCCESS(res) { if (res != GLFW_TRUE) { printf("Error-Code: %d", res); return FAILURE; } }
#define BOOL_LITERAL(val) val ? "True" : "False"
#define HUMAN_READABLE(val) val * 9.313226e-10

int initVulkan(VkInstance *vkInstance, VkDevice *device, VkSurfaceKHR *surface, GLFWwindow *window,
               VkSwapchainKHR *swapChain, VkImageView **imageViews, uint32_t *amountImages);
void createAppInfo(VkApplicationInfo *appInfo);
void createInstanceInfo(VkApplicationInfo *appInfo, VkInstanceCreateInfo *instanceInfo);
void createQueueInfo(VkDeviceQueueCreateInfo *queueInfo);
void createDeviceInfo(VkDeviceQueueCreateInfo *queueInfo, VkDeviceCreateInfo *deviceInfo,
        VkPhysicalDeviceFeatures *features);
void createImageViewInfo(VkImageViewCreateInfo *imageViewInfo, VkImage *swapChainImages, int index);
void createSwapChainInfo(VkSwapchainCreateInfoKHR *swapChainCreateInfo, VkSurfaceKHR *surface);
void createShaderStageInfo(VkPipelineShaderStageCreateInfo *shaderStageInfo, VkShaderStageFlagBits shaderStageBit,
        VkShaderModule shaderModule, const char *entryPointName);
int createShaderModule(VkDevice device, VkShaderModule *shaderModule, const char *shaderSource, long sourceSize);
void createPipelineVertexInputStateInfo(VkPipelineVertexInputStateCreateInfo *vertexInputStateInfo,
        VkVertexInputAttributeDescription *attributes, uint32_t atrributesSize);
void createInputAssemblyStateInfo(VkPipelineInputAssemblyStateCreateInfo *inputAssemblyStateInfo, VkPrimitiveTopology topology);
void createViewportStateInfo(VkPipelineViewportStateCreateInfo *viewportStateInfo, float width, float height);
void createRasterizationStateInfo(VkPipelineRasterizationStateCreateInfo *rasterizationStateInfo, VkPolygonMode polygonMode);
void createMultisampleStateInfo(VkPipelineMultisampleStateCreateInfo *multisampleStateInfo);
void createColorBlendAttachmentStateInfo(VkPipelineColorBlendAttachmentState  *colorBlendAttachmentState);
void createColorBlendStateInfo(VkPipelineColorBlendStateCreateInfo  *colorBlendStateInfo,
                               VkPipelineColorBlendAttachmentState  *blendAttachments, uint32_t blendAttachmentsSize);
void createLayoutInfo(VkPipelineLayoutCreateInfo  *layoutInfo, VkDescriptorSetLayout *setLayouts, uint32_t setLayoutSize);
void createAttachmentDescription(VkAttachmentDescription *attachmentDescription);
void createAttachmentReference(VkAttachmentReference *attachmentReference, uint32_t attachment);
void createSubpassDescription(VkSubpassDescription *subpassDescription, VkPipelineBindPoint bindPoint,
                              VkAttachmentReference *attachmentReference);
void createRenderPassInfo(VkRenderPassCreateInfo *renderPassInfo, VkAttachmentDescription *attachmentDescriptions,
                          VkSubpassDescription *subpassDescriptions);
void createSemaphoreInfo(VkSemaphoreCreateInfo *semaphoreInfo);
void createGraphicsPipelineInfo(VkGraphicsPipelineCreateInfo *graphicsPipelineInfo,
                                VkPipelineShaderStageCreateInfo *shaderStages,
                                VkPipelineVertexInputStateCreateInfo *vertexInputState,
                                VkPipelineInputAssemblyStateCreateInfo *inputAssemblyState,
                                VkPipelineViewportStateCreateInfo *viewportState,
                                VkPipelineRasterizationStateCreateInfo *rasterizationState,
                                VkPipelineMultisampleStateCreateInfo *multisampleState,
                                VkPipelineColorBlendStateCreateInfo *colorBlendState, VkPipelineLayout *pipelineLayout,
                                VkRenderPass *renderPass);
void createFramebufferInfo(VkFramebufferCreateInfo *framebufferInfo, VkRenderPass *renderPass, VkImageView *imageView);
void createCommandPoolInfo(VkCommandPoolCreateInfo *commandPoolInfo, uint32_t queueFamilyIndex);
void createCommandBufferAllocateInfo(VkCommandBufferAllocateInfo *commandBufferAllocateInfo, VkCommandPool *commandPool, uint32_t amountImages);
void createCommandBufferBeginInfo(VkCommandBufferBeginInfo *commandBufferBeginInfo);
void createRenderPassBeginInfo(VkRenderPassBeginInfo *renderPassBeginInfo, VkRenderPass *renderPass, VkFramebuffer *framebuffer);
void shutdownVulkan(VkInstance *vkInstance, VkDevice *device, VkSurfaceKHR *surface, VkSwapchainKHR *swapChain,
                    VkImageView *imageViews, uint32_t imageViewsSize, VkShaderModule *modules,
                    uint32_t shaderModulesSize, VkPipelineLayout *pipelineLayouts, uint32_t pipelineLayoutsSize,
                    VkRenderPass *renderPasses, uint32_t renderPassesSize, VkPipeline *pipelines,
                    uint32_t pipelinesSize, VkFramebuffer *framebuffers, VkCommandPool *commandPool,
                    VkCommandBuffer *commandBuffers, VkSemaphore *semaphores, uint32_t semaphoresSize);
void shutdownGLFW(GLFWwindow *window);
void printStats(VkPhysicalDevice *physicalDevice, VkSurfaceKHR *surface);
