.class Lorg/codeaurora/ims/CrsAudioOutputDeviceController$3;
.super Ljava/lang/Object;
.source "CrsAudioOutputDeviceController.java"

# interfaces
.implements Landroid/media/AudioManager$OnCommunicationDeviceChangedListener;


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

    .line 247
    iput-object p1, p0, Lorg/codeaurora/ims/CrsAudioOutputDeviceController$3;->this$0:Lorg/codeaurora/ims/CrsAudioOutputDeviceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCommunicationDeviceChanged(Landroid/media/AudioDeviceInfo;)V
    .locals 3

    .line 250
    iget-object v0, p0, Lorg/codeaurora/ims/CrsAudioOutputDeviceController$3;->this$0:Lorg/codeaurora/ims/CrsAudioOutputDeviceController;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Communication device changed: type="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 252
    invoke-virtual {p1}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, "null"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", ringtoneMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/codeaurora/ims/CrsAudioOutputDeviceController$3;->this$0:Lorg/codeaurora/ims/CrsAudioOutputDeviceController;

    invoke-static {v2}, Lorg/codeaurora/ims/CrsAudioOutputDeviceController;->-$$Nest$fgetmIsRingtoneMode(Lorg/codeaurora/ims/CrsAudioOutputDeviceController;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 250
    invoke-static {v0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 255
    iget-object v0, p0, Lorg/codeaurora/ims/CrsAudioOutputDeviceController$3;->this$0:Lorg/codeaurora/ims/CrsAudioOutputDeviceController;

    invoke-static {v0}, Lorg/codeaurora/ims/CrsAudioOutputDeviceController;->-$$Nest$fgetmIsRingtoneMode(Lorg/codeaurora/ims/CrsAudioOutputDeviceController;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 256
    iget-object p0, p0, Lorg/codeaurora/ims/CrsAudioOutputDeviceController$3;->this$0:Lorg/codeaurora/ims/CrsAudioOutputDeviceController;

    invoke-static {p0, p1}, Lorg/codeaurora/ims/CrsAudioOutputDeviceController;->-$$Nest$mhandleCommunicationDeviceChanged(Lorg/codeaurora/ims/CrsAudioOutputDeviceController;Landroid/media/AudioDeviceInfo;)V

    :cond_1
    return-void
.end method
