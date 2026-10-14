.class Lcom/qualcomm/ims/vt/LowBatteryHandler$1;
.super Landroid/content/BroadcastReceiver;
.source "LowBatteryHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/ims/vt/LowBatteryHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/ims/vt/LowBatteryHandler;


# direct methods
.method constructor <init>(Lcom/qualcomm/ims/vt/LowBatteryHandler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 90
    iput-object p1, p0, Lcom/qualcomm/ims/vt/LowBatteryHandler$1;->this$0:Lcom/qualcomm/ims/vt/LowBatteryHandler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 93
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 94
    const-string v0, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 95
    iget-object p1, p0, Lcom/qualcomm/ims/vt/LowBatteryHandler$1;->this$0:Lcom/qualcomm/ims/vt/LowBatteryHandler;

    const-string v0, "battery_low"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    invoke-static {p1, p2}, Lcom/qualcomm/ims/vt/LowBatteryHandler;->-$$Nest$fputmIsLowBattery(Lcom/qualcomm/ims/vt/LowBatteryHandler;Z)V

    .line 96
    iget-object p1, p0, Lcom/qualcomm/ims/vt/LowBatteryHandler$1;->this$0:Lcom/qualcomm/ims/vt/LowBatteryHandler;

    invoke-static {p1}, Lcom/qualcomm/ims/vt/LowBatteryHandler;->-$$Nest$fgetmServiceSubs(Lcom/qualcomm/ims/vt/LowBatteryHandler;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/codeaurora/ims/ImsServiceSub;

    .line 98
    invoke-virtual {p2}, Lorg/codeaurora/ims/ImsServiceSub;->getPhoneId()I

    move-result v0

    iget-object v1, p0, Lcom/qualcomm/ims/vt/LowBatteryHandler$1;->this$0:Lcom/qualcomm/ims/vt/LowBatteryHandler;

    invoke-static {v1}, Lcom/qualcomm/ims/vt/LowBatteryHandler;->-$$Nest$fgetmContext(Lcom/qualcomm/ims/vt/LowBatteryHandler;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->allowVideoCallsInLowBattery(ILandroid/content/Context;)Z

    move-result v0

    .line 99
    iget-object v1, p0, Lcom/qualcomm/ims/vt/LowBatteryHandler$1;->this$0:Lcom/qualcomm/ims/vt/LowBatteryHandler;

    invoke-static {v1}, Lcom/qualcomm/ims/vt/LowBatteryHandler;->-$$Nest$fgetmIsLowBattery(Lcom/qualcomm/ims/vt/LowBatteryHandler;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    .line 101
    invoke-static {}, Lcom/qualcomm/ims/vt/LowBatteryHandler;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "disconnectVideoCalls on low battery"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object v1, p0, Lcom/qualcomm/ims/vt/LowBatteryHandler$1;->this$0:Lcom/qualcomm/ims/vt/LowBatteryHandler;

    invoke-static {v1, p2}, Lcom/qualcomm/ims/vt/LowBatteryHandler;->-$$Nest$mdisconnectVideoCalls(Lcom/qualcomm/ims/vt/LowBatteryHandler;Lorg/codeaurora/ims/ImsServiceSub;)V

    :cond_1
    if-eqz v0, :cond_2

    .line 104
    iget-object v0, p0, Lcom/qualcomm/ims/vt/LowBatteryHandler$1;->this$0:Lcom/qualcomm/ims/vt/LowBatteryHandler;

    invoke-static {v0}, Lcom/qualcomm/ims/vt/LowBatteryHandler;->-$$Nest$fgetisCarrierOneSupported(Lcom/qualcomm/ims/vt/LowBatteryHandler;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    :cond_2
    invoke-virtual {p2}, Lorg/codeaurora/ims/ImsServiceSub;->updateLowBatteryStatus()V

    goto :goto_0

    :cond_3
    return-void
.end method
