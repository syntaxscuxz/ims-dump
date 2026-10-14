.class Lorg/codeaurora/ims/ImsConfigImpl$7;
.super Ljava/lang/Object;
.source "ImsConfigImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/codeaurora/ims/ImsConfigImpl;->syncWfcMDN()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/codeaurora/ims/ImsConfigImpl;


# direct methods
.method constructor <init>(Lorg/codeaurora/ims/ImsConfigImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 825
    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$7;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 828
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$7;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsConfigImpl;->-$$Nest$fgetmSubscriptionManager(Lorg/codeaurora/ims/ImsConfigImpl;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$7;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsConfigImpl;->-$$Nest$fgetmSubscriptionManager(Lorg/codeaurora/ims/ImsConfigImpl;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$7;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsConfigImpl;->-$$Nest$fgetmSubId(Lorg/codeaurora/ims/ImsConfigImpl;)I

    move-result v1

    .line 829
    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->isActiveSubscriptionId(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 835
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$7;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    const/16 v1, 0x48

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsConfigImpl;->getConfigString(I)Ljava/lang/String;

    move-result-object v0

    .line 836
    iget-object v2, p0, Lorg/codeaurora/ims/ImsConfigImpl$7;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v2}, Lorg/codeaurora/ims/ImsConfigImpl;->-$$Nest$fgetmSubId(Lorg/codeaurora/ims/ImsConfigImpl;)I

    move-result v3

    invoke-static {v2, v3}, Lorg/codeaurora/ims/ImsConfigImpl;->-$$Nest$mgetWfcMDN(Lorg/codeaurora/ims/ImsConfigImpl;I)Ljava/lang/String;

    move-result-object v2

    .line 837
    iget-object v3, p0, Lorg/codeaurora/ims/ImsConfigImpl$7;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "syncWfcMDN bp = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/qualcomm/ims/utils/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", ap = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/qualcomm/ims/utils/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 838
    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 839
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$7;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "syncWfcMDN ap bp not equal bp: ap->bp, ap = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/qualcomm/ims/utils/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 840
    iget-object p0, p0, Lorg/codeaurora/ims/ImsConfigImpl$7;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-virtual {p0, v1, v2}, Lorg/codeaurora/ims/ImsConfigImpl;->setConfig(ILjava/lang/String;)I

    :cond_1
    return-void

    .line 830
    :cond_2
    :goto_0
    iget-object p0, p0, Lorg/codeaurora/ims/ImsConfigImpl$7;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    const-string v0, "syncWfcMDN invalid sub id"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
