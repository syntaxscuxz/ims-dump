.class Lorg/codeaurora/ims/CrsAudioOutputDeviceController$1;
.super Ljava/lang/Object;
.source "CrsAudioOutputDeviceController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/codeaurora/ims/CrsAudioOutputDeviceController;->scheduleDelayedDeviceNotification()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/codeaurora/ims/CrsAudioOutputDeviceController;


# direct methods
.method constructor <init>(Lorg/codeaurora/ims/CrsAudioOutputDeviceController;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 142
    iput-object p1, p0, Lorg/codeaurora/ims/CrsAudioOutputDeviceController$1;->this$0:Lorg/codeaurora/ims/CrsAudioOutputDeviceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 145
    iget-object v0, p0, Lorg/codeaurora/ims/CrsAudioOutputDeviceController$1;->this$0:Lorg/codeaurora/ims/CrsAudioOutputDeviceController;

    invoke-static {v0}, Lorg/codeaurora/ims/CrsAudioOutputDeviceController;->-$$Nest$fgetmDeviceNotificationRunnable(Lorg/codeaurora/ims/CrsAudioOutputDeviceController;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/codeaurora/ims/CrsAudioOutputDeviceController$1;->this$0:Lorg/codeaurora/ims/CrsAudioOutputDeviceController;

    invoke-static {v0}, Lorg/codeaurora/ims/CrsAudioOutputDeviceController;->-$$Nest$fgetmCurrentCrsCall(Lorg/codeaurora/ims/CrsAudioOutputDeviceController;)Lorg/codeaurora/ims/ImsCallSessionImpl;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/codeaurora/ims/CrsAudioOutputDeviceController$1;->this$0:Lorg/codeaurora/ims/CrsAudioOutputDeviceController;

    invoke-static {v0}, Lorg/codeaurora/ims/CrsAudioOutputDeviceController;->-$$Nest$fgetmAudioManager(Lorg/codeaurora/ims/CrsAudioOutputDeviceController;)Landroid/media/AudioManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 148
    iget-object v0, p0, Lorg/codeaurora/ims/CrsAudioOutputDeviceController$1;->this$0:Lorg/codeaurora/ims/CrsAudioOutputDeviceController;

    invoke-static {v0}, Lorg/codeaurora/ims/CrsAudioOutputDeviceController;->-$$Nest$fgetmAudioManager(Lorg/codeaurora/ims/CrsAudioOutputDeviceController;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioManager;->getCommunicationDevice()Landroid/media/AudioDeviceInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 150
    iget-object v1, p0, Lorg/codeaurora/ims/CrsAudioOutputDeviceController$1;->this$0:Lorg/codeaurora/ims/CrsAudioOutputDeviceController;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Delayed device notification: type="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 151
    invoke-virtual {v0}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " (no callback within 400ms)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 150
    invoke-static {v1, v2}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    iget-object v1, p0, Lorg/codeaurora/ims/CrsAudioOutputDeviceController$1;->this$0:Lorg/codeaurora/ims/CrsAudioOutputDeviceController;

    invoke-static {v1, v0}, Lorg/codeaurora/ims/CrsAudioOutputDeviceController;->-$$Nest$mnotifyAudioHalDeviceChange(Lorg/codeaurora/ims/CrsAudioOutputDeviceController;Landroid/media/AudioDeviceInfo;)V

    .line 155
    :cond_0
    iget-object p0, p0, Lorg/codeaurora/ims/CrsAudioOutputDeviceController$1;->this$0:Lorg/codeaurora/ims/CrsAudioOutputDeviceController;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/codeaurora/ims/CrsAudioOutputDeviceController;->-$$Nest$fputmDeviceNotificationRunnable(Lorg/codeaurora/ims/CrsAudioOutputDeviceController;Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method
