.class Lorg/codeaurora/ims/ImsSubController$1;
.super Landroid/content/BroadcastReceiver;
.source "ImsSubController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsSubController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/codeaurora/ims/ImsSubController;


# direct methods
.method constructor <init>(Lorg/codeaurora/ims/ImsSubController;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 669
    iput-object p1, p0, Lorg/codeaurora/ims/ImsSubController$1;->this$0:Lorg/codeaurora/ims/ImsSubController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 671
    iget-object p1, p0, Lorg/codeaurora/ims/ImsSubController$1;->this$0:Lorg/codeaurora/ims/ImsSubController;

    invoke-static {p1}, Lorg/codeaurora/ims/ImsSubController;->-$$Nest$misDisposed(Lorg/codeaurora/ims/ImsSubController;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 672
    const-string p1, "onReceive, returning as isDisposed"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 675
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 676
    const-string v0, "android.telephony.action.MULTI_SIM_CONFIG_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 677
    const-string p1, "android.telephony.extra.ACTIVE_SIM_SUPPORTED_COUNT"

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 679
    iget-object p0, p0, Lorg/codeaurora/ims/ImsSubController$1;->this$0:Lorg/codeaurora/ims/ImsSubController;

    invoke-static {p0, p1}, Lorg/codeaurora/ims/ImsSubController;->-$$Nest$mhandleOnMultiSimConfigChanged(Lorg/codeaurora/ims/ImsSubController;I)V

    :cond_1
    return-void
.end method
