.class Lorg/codeaurora/ims/CrsAudioOutputDeviceController$2;
.super Ljava/lang/Object;
.source "CrsAudioOutputDeviceController.java"

# interfaces
.implements Landroid/media/AudioManager$OnModeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/codeaurora/ims/CrsAudioOutputDeviceController;->registerAudioDeviceListener()V
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

    .line 234
    iput-object p1, p0, Lorg/codeaurora/ims/CrsAudioOutputDeviceController$2;->this$0:Lorg/codeaurora/ims/CrsAudioOutputDeviceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onModeChanged(I)V
    .locals 3

    .line 237
    iget-object v0, p0, Lorg/codeaurora/ims/CrsAudioOutputDeviceController$2;->this$0:Lorg/codeaurora/ims/CrsAudioOutputDeviceController;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Audio mode changed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 238
    iget-object v0, p0, Lorg/codeaurora/ims/CrsAudioOutputDeviceController$2;->this$0:Lorg/codeaurora/ims/CrsAudioOutputDeviceController;

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, v1}, Lorg/codeaurora/ims/CrsAudioOutputDeviceController;->-$$Nest$fputmIsRingtoneMode(Lorg/codeaurora/ims/CrsAudioOutputDeviceController;Z)V

    .line 239
    iget-object p1, p0, Lorg/codeaurora/ims/CrsAudioOutputDeviceController$2;->this$0:Lorg/codeaurora/ims/CrsAudioOutputDeviceController;

    invoke-static {p1}, Lorg/codeaurora/ims/CrsAudioOutputDeviceController;->-$$Nest$fgetmIsRingtoneMode(Lorg/codeaurora/ims/CrsAudioOutputDeviceController;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 242
    iget-object p0, p0, Lorg/codeaurora/ims/CrsAudioOutputDeviceController$2;->this$0:Lorg/codeaurora/ims/CrsAudioOutputDeviceController;

    invoke-static {p0}, Lorg/codeaurora/ims/CrsAudioOutputDeviceController;->-$$Nest$mscheduleDelayedDeviceNotification(Lorg/codeaurora/ims/CrsAudioOutputDeviceController;)V

    :cond_1
    return-void
.end method
