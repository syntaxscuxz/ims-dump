.class Lcom/qualcomm/ims/vt/Camera2$1;
.super Landroid/hardware/camera2/CameraDevice$StateCallback;
.source "Camera2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/ims/vt/Camera2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/ims/vt/Camera2;


# direct methods
.method constructor <init>(Lcom/qualcomm/ims/vt/Camera2;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 670
    iput-object p1, p0, Lcom/qualcomm/ims/vt/Camera2$1;->this$0:Lcom/qualcomm/ims/vt/Camera2;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraDevice$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisconnected(Landroid/hardware/camera2/CameraDevice;)V
    .locals 1

    .line 687
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onDisconnected: CameraDevice is disconnected, id="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/qualcomm/ims/vt/Camera2$1;->this$0:Lcom/qualcomm/ims/vt/Camera2;

    invoke-virtual {v0}, Lcom/qualcomm/ims/vt/Camera2;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Camera2"

    invoke-static {v0, p1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 688
    iget-object p0, p0, Lcom/qualcomm/ims/vt/Camera2$1;->this$0:Lcom/qualcomm/ims/vt/Camera2;

    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/Camera2;->close()V

    return-void
.end method

.method public onError(Landroid/hardware/camera2/CameraDevice;I)V
    .locals 1

    .line 693
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onError: CameraDevice is disconnected, id="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/qualcomm/ims/vt/Camera2$1;->this$0:Lcom/qualcomm/ims/vt/Camera2;

    invoke-virtual {v0}, Lcom/qualcomm/ims/vt/Camera2;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "error="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Camera2"

    invoke-static {p2, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 694
    iget-object p0, p0, Lcom/qualcomm/ims/vt/Camera2$1;->this$0:Lcom/qualcomm/ims/vt/Camera2;

    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/Camera2;->close()V

    return-void
.end method

.method public onOpened(Landroid/hardware/camera2/CameraDevice;)V
    .locals 2

    .line 674
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onOpened: CameraDevice is opened, id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/qualcomm/ims/vt/Camera2$1;->this$0:Lcom/qualcomm/ims/vt/Camera2;

    invoke-virtual {v1}, Lcom/qualcomm/ims/vt/Camera2;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Camera2"

    invoke-static {v1, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 675
    iget-object v0, p0, Lcom/qualcomm/ims/vt/Camera2$1;->this$0:Lcom/qualcomm/ims/vt/Camera2;

    invoke-static {v0, p1}, Lcom/qualcomm/ims/vt/Camera2;->-$$Nest$fputmCameraDevice(Lcom/qualcomm/ims/vt/Camera2;Landroid/hardware/camera2/CameraDevice;)V

    .line 676
    iget-object p1, p0, Lcom/qualcomm/ims/vt/Camera2$1;->this$0:Lcom/qualcomm/ims/vt/Camera2;

    invoke-static {p1}, Lcom/qualcomm/ims/vt/Camera2;->-$$Nest$misClosed(Lcom/qualcomm/ims/vt/Camera2;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 677
    const-string p1, "onOpened: Camera open completed after close requested."

    invoke-static {v1, p1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 678
    iget-object p0, p0, Lcom/qualcomm/ims/vt/Camera2$1;->this$0:Lcom/qualcomm/ims/vt/Camera2;

    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/Camera2;->close()V

    return-void

    .line 680
    :cond_0
    iget-object p1, p0, Lcom/qualcomm/ims/vt/Camera2$1;->this$0:Lcom/qualcomm/ims/vt/Camera2;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/qualcomm/ims/vt/Camera2;->-$$Nest$fputmOpenState(Lcom/qualcomm/ims/vt/Camera2;I)V

    .line 681
    iget-object p0, p0, Lcom/qualcomm/ims/vt/Camera2$1;->this$0:Lcom/qualcomm/ims/vt/Camera2;

    invoke-static {p0}, Lcom/qualcomm/ims/vt/Camera2;->-$$Nest$mexectutePendingRequests(Lcom/qualcomm/ims/vt/Camera2;)V

    return-void
.end method
