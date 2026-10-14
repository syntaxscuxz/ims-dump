.class Lorg/codeaurora/ims/ImsConfigImpl$11;
.super Ljava/lang/Object;
.source "ImsConfigImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/codeaurora/ims/ImsConfigImpl;->adjustAndSyncVoWiFiMode(Landroid/telephony/ServiceState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/codeaurora/ims/ImsConfigImpl;

.field final synthetic val$serviceState:Landroid/telephony/ServiceState;


# direct methods
.method constructor <init>(Lorg/codeaurora/ims/ImsConfigImpl;Landroid/telephony/ServiceState;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1108
    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$11;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    iput-object p2, p0, Lorg/codeaurora/ims/ImsConfigImpl$11;->val$serviceState:Landroid/telephony/ServiceState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1110
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$11;->val$serviceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v0

    .line 1117
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$11;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    if-eqz v0, :cond_0

    .line 1115
    :try_start_0
    invoke-static {v1}, Lorg/codeaurora/ims/ImsConfigImpl;->-$$Nest$fgetmImsMmTelManager(Lorg/codeaurora/ims/ImsConfigImpl;)Landroid/telephony/ims/ImsMmTelManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ims/ImsMmTelManager;->getVoWiFiRoamingModeSetting()I

    move-result v1

    goto :goto_0

    .line 1117
    :cond_0
    invoke-static {v1}, Lorg/codeaurora/ims/ImsConfigImpl;->-$$Nest$fgetmImsMmTelManager(Lorg/codeaurora/ims/ImsConfigImpl;)Landroid/telephony/ims/ImsMmTelManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ims/ImsMmTelManager;->getVoWiFiModeSetting()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1124
    :goto_0
    iget-object v2, p0, Lorg/codeaurora/ims/ImsConfigImpl$11;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v2, v1}, Lorg/codeaurora/ims/ImsConfigImpl;->-$$Nest$madjustVoWiFiMode(Lorg/codeaurora/ims/ImsConfigImpl;I)I

    move-result v1

    if-eqz v0, :cond_1

    .line 1126
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$11;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsConfigImpl;->-$$Nest$fgetmServiceSub(Lorg/codeaurora/ims/ImsConfigImpl;)Lorg/codeaurora/ims/ImsServiceSub;

    move-result-object v0

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsServiceSub;->IsWfcRoamingConfigurationSupportedByModem()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x3eb

    goto :goto_1

    :cond_1
    const/16 v0, 0x1b

    .line 1131
    :goto_1
    iget-object v2, p0, Lorg/codeaurora/ims/ImsConfigImpl$11;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-virtual {v2, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->getConfigInt(I)I

    move-result v2

    if-eq v1, v2, :cond_2

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 1133
    iget-object p0, p0, Lorg/codeaurora/ims/ImsConfigImpl$11;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-virtual {p0, v0, v1}, Lorg/codeaurora/ims/ImsConfigImpl;->sendSetConfigRequestAsync(II)V

    :cond_2
    return-void

    .line 1120
    :catch_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$11;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not update WFCMode: invalid sub = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/codeaurora/ims/ImsConfigImpl$11;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {p0}, Lorg/codeaurora/ims/ImsConfigImpl;->-$$Nest$fgetmSubId(Lorg/codeaurora/ims/ImsConfigImpl;)I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
