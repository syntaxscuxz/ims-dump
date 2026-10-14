.class Lorg/codeaurora/ims/ImsCallModification$1;
.super Landroid/content/BroadcastReceiver;
.source "ImsCallModification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsCallModification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/codeaurora/ims/ImsCallModification;


# direct methods
.method constructor <init>(Lorg/codeaurora/ims/ImsCallModification;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 99
    iput-object p1, p0, Lorg/codeaurora/ims/ImsCallModification$1;->this$0:Lorg/codeaurora/ims/ImsCallModification;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 102
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mIsCarMode "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallModification$1;->this$0:Lorg/codeaurora/ims/ImsCallModification;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsCallModification;->-$$Nest$fgetmIsCarMode(Lorg/codeaurora/ims/ImsCallModification;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " intent received: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsCallModification"

    invoke-static {v1, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    sget-object v0, Landroid/app/UiModeManager;->ACTION_ENTER_CAR_MODE:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallModification$1;->this$0:Lorg/codeaurora/ims/ImsCallModification;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lorg/codeaurora/ims/ImsCallModification;->-$$Nest$fputmIsCarMode(Lorg/codeaurora/ims/ImsCallModification;Z)V

    return-void

    .line 110
    :cond_0
    sget-object v0, Landroid/app/UiModeManager;->ACTION_EXIT_CAR_MODE:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 111
    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallModification$1;->this$0:Lorg/codeaurora/ims/ImsCallModification;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lorg/codeaurora/ims/ImsCallModification;->-$$Nest$fputmIsCarMode(Lorg/codeaurora/ims/ImsCallModification;Z)V

    return-void

    .line 113
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Unexpected intent received: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
