.class Lcom/qualcomm/ims/vt/CameraController$1;
.super Ljava/lang/Object;
.source "CameraController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qualcomm/ims/vt/CameraController;->onConfigureFailed(Lcom/qualcomm/ims/vt/Camera;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/ims/vt/CameraController;

.field final synthetic val$cameraWrapper:Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;

.field final synthetic val$stream:I


# direct methods
.method constructor <init>(Lcom/qualcomm/ims/vt/CameraController;Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 765
    iput-object p1, p0, Lcom/qualcomm/ims/vt/CameraController$1;->this$0:Lcom/qualcomm/ims/vt/CameraController;

    iput-object p2, p0, Lcom/qualcomm/ims/vt/CameraController$1;->val$cameraWrapper:Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;

    iput p3, p0, Lcom/qualcomm/ims/vt/CameraController$1;->val$stream:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 769
    const-string v0, "updateCameraSession failed: "

    :try_start_0
    iget-object v1, p0, Lcom/qualcomm/ims/vt/CameraController$1;->this$0:Lcom/qualcomm/ims/vt/CameraController;

    const-string v2, "onConfigureFailed: Re try camera operation"

    invoke-static {v1, v2}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 770
    iget-object v1, p0, Lcom/qualcomm/ims/vt/CameraController$1;->val$cameraWrapper:Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;

    invoke-static {v1}, Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;->-$$Nest$mupdateCameraConfigs(Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;)V

    .line 771
    iget-object v1, p0, Lcom/qualcomm/ims/vt/CameraController$1;->val$cameraWrapper:Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;

    invoke-static {v1}, Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;->-$$Nest$mupdateCameraSession(Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    .line 777
    iget-object v2, p0, Lcom/qualcomm/ims/vt/CameraController$1;->this$0:Lcom/qualcomm/ims/vt/CameraController;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 778
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 777
    invoke-static {v2, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 779
    iget-object v0, p0, Lcom/qualcomm/ims/vt/CameraController$1;->this$0:Lcom/qualcomm/ims/vt/CameraController;

    const/4 v1, 0x3

    iget p0, p0, Lcom/qualcomm/ims/vt/CameraController$1;->val$stream:I

    invoke-static {v0, v1, p0}, Lcom/qualcomm/ims/vt/CameraController;->-$$Nest$msendCameraStatus(Lcom/qualcomm/ims/vt/CameraController;II)V

    goto :goto_0

    :catch_1
    move-exception v1

    .line 773
    iget-object v2, p0, Lcom/qualcomm/ims/vt/CameraController$1;->this$0:Lcom/qualcomm/ims/vt/CameraController;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 774
    invoke-virtual {v1}, Landroid/hardware/camera2/CameraAccessException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 773
    invoke-static {v2, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 775
    iget-object v0, p0, Lcom/qualcomm/ims/vt/CameraController$1;->this$0:Lcom/qualcomm/ims/vt/CameraController;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraAccessException;->getReason()I

    move-result v1

    iget p0, p0, Lcom/qualcomm/ims/vt/CameraController$1;->val$stream:I

    invoke-static {v0, v1, p0}, Lcom/qualcomm/ims/vt/CameraController;->-$$Nest$msendCameraStatus(Lcom/qualcomm/ims/vt/CameraController;II)V

    :goto_0
    return-void
.end method
