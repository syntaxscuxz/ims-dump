.class Lorg/codeaurora/ims/ImsConfigImpl$9;
.super Ljava/lang/Object;
.source "ImsConfigImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/codeaurora/ims/ImsConfigImpl;->checkinVolteProvision(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/codeaurora/ims/ImsConfigImpl;

.field final synthetic val$event_code:I

.field final synthetic val$event_info:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/codeaurora/ims/ImsConfigImpl;ILjava/lang/String;)V
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

    .line 965
    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$9;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    iput p2, p0, Lorg/codeaurora/ims/ImsConfigImpl$9;->val$event_code:I

    iput-object p3, p0, Lorg/codeaurora/ims/ImsConfigImpl$9;->val$event_info:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const-string v0, "Log Checkin event, tag={"

    const-string v1, "Ignore Checkin event, flag={0x"

    .line 977
    iget-object v2, p0, Lorg/codeaurora/ims/ImsConfigImpl$9;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v2}, Lorg/codeaurora/ims/ImsConfigImpl;->-$$Nest$fgetmContext(Lorg/codeaurora/ims/ImsConfigImpl;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lorg/codeaurora/ims/ImsConfigImpl$9;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v3}, Lorg/codeaurora/ims/ImsConfigImpl;->-$$Nest$mgetPhoneId(Lorg/codeaurora/ims/ImsConfigImpl;)I

    move-result v3

    const-string v4, "carrier_volte_provisioning_required_bool"

    invoke-static {v2, v3, v4}, Lorg/codeaurora/ims/ImsUtils;->getBooleanCarrierConfig(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 981
    iget-object v2, p0, Lorg/codeaurora/ims/ImsConfigImpl$9;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Lorg/codeaurora/ims/ImsConfigImpl;->getConfigInt(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v3, v2, :cond_0

    const/4 v2, 0x3

    goto :goto_0

    :cond_0
    move v2, v3

    .line 985
    :goto_0
    iget-object v4, p0, Lorg/codeaurora/ims/ImsConfigImpl$9;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    const/16 v5, 0xb

    invoke-virtual {v4, v5}, Lorg/codeaurora/ims/ImsConfigImpl;->getConfigInt(I)I

    move-result v4

    if-ne v3, v4, :cond_1

    or-int/lit8 v2, v2, 0x4

    .line 989
    :cond_1
    iget-object v4, p0, Lorg/codeaurora/ims/ImsConfigImpl$9;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    const/16 v5, 0x19

    invoke-virtual {v4, v5}, Lorg/codeaurora/ims/ImsConfigImpl;->getConfigInt(I)I

    move-result v4

    if-ne v3, v4, :cond_2

    or-int/lit8 v2, v2, 0x8

    .line 993
    :cond_2
    iget-object v4, p0, Lorg/codeaurora/ims/ImsConfigImpl$9;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    const/16 v5, 0x1c

    invoke-virtual {v4, v5}, Lorg/codeaurora/ims/ImsConfigImpl;->getConfigInt(I)I

    move-result v4

    if-ne v3, v4, :cond_3

    or-int/lit8 v2, v2, 0x10

    .line 997
    :cond_3
    iget-object v4, p0, Lorg/codeaurora/ims/ImsConfigImpl$9;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    const/16 v5, 0x41

    invoke-virtual {v4, v5}, Lorg/codeaurora/ims/ImsConfigImpl;->getConfigInt(I)I

    move-result v4

    if-ne v3, v4, :cond_5

    or-int/lit8 v2, v2, 0x20

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    .line 1005
    :cond_5
    :goto_1
    new-instance v3, Lorg/codeaurora/ims/CheckinEvent;

    const-string v4, "CALL_PERF_STATS"

    const-string v5, "VolteProvisioning"

    const-string v6, "1.0"

    .line 1008
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-direct/range {v3 .. v8}, Lorg/codeaurora/ims/CheckinEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 1012
    :try_start_0
    iget-object v4, p0, Lorg/codeaurora/ims/ImsConfigImpl$9;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v4}, Lorg/codeaurora/ims/ImsConfigImpl;->-$$Nest$fgetmUserSetting(Lorg/codeaurora/ims/ImsConfigImpl;)Ljava/lang/Integer;

    move-result-object v4

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1013
    :try_start_1
    const-string v5, "usr"

    iget-object v6, p0, Lorg/codeaurora/ims/ImsConfigImpl$9;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v6}, Lorg/codeaurora/ims/ImsConfigImpl;->-$$Nest$fgetmUserSetting(Lorg/codeaurora/ims/ImsConfigImpl;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v3, v5, v6}, Lorg/codeaurora/ims/CheckinEvent;->setValue(Ljava/lang/String;I)V

    .line 1014
    iget-object v5, p0, Lorg/codeaurora/ims/ImsConfigImpl$9;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v5}, Lorg/codeaurora/ims/ImsConfigImpl;->-$$Nest$fgetmUserSetting(Lorg/codeaurora/ims/ImsConfigImpl;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v5, v2

    .line 1015
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1017
    :try_start_2
    const-string v4, "dm"

    invoke-virtual {v3, v4, v2}, Lorg/codeaurora/ims/CheckinEvent;->setValue(Ljava/lang/String;I)V

    .line 1018
    iget v2, p0, Lorg/codeaurora/ims/ImsConfigImpl$9;->val$event_code:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_6

    .line 1019
    const-string v4, "evt"

    invoke-virtual {v3, v4, v2}, Lorg/codeaurora/ims/CheckinEvent;->setValue(Ljava/lang/String;I)V

    .line 1021
    :cond_6
    iget-object v2, p0, Lorg/codeaurora/ims/ImsConfigImpl$9;->val$event_info:Ljava/lang/String;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_7

    .line 1022
    const-string v2, "evt_info"

    iget-object v4, p0, Lorg/codeaurora/ims/ImsConfigImpl$9;->val$event_info:Ljava/lang/String;

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v4, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lorg/codeaurora/ims/CheckinEvent;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 1025
    :cond_7
    iget-object v2, p0, Lorg/codeaurora/ims/ImsConfigImpl$9;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v2}, Lorg/codeaurora/ims/ImsConfigImpl;->-$$Nest$fgetmVolteProvisionFlag(Lorg/codeaurora/ims/ImsConfigImpl;)I

    move-result v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1031
    iget-object v4, p0, Lorg/codeaurora/ims/ImsConfigImpl$9;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    if-ne v2, v5, :cond_8

    .line 1026
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1027
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}, tag={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lorg/codeaurora/ims/CheckinEvent;->getTagName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}, value={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1028
    invoke-virtual {v3}, Lorg/codeaurora/ims/CheckinEvent;->serializeEvent()Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1026
    invoke-static {v4, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 1031
    :cond_8
    invoke-static {v4, v5}, Lorg/codeaurora/ims/ImsConfigImpl;->-$$Nest$fputmVolteProvisionFlag(Lorg/codeaurora/ims/ImsConfigImpl;I)V

    .line 1033
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$9;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsConfigImpl;->-$$Nest$fgetmContext(Lorg/codeaurora/ims/ImsConfigImpl;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v3, v1}, Lorg/codeaurora/ims/CheckinEvent;->publish(Landroid/content/ContentResolver;)V

    .line 1035
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$9;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/codeaurora/ims/CheckinEvent;->getTagName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "}, value={"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1036
    invoke-virtual {v3}, Lorg/codeaurora/ims/CheckinEvent;->serializeEvent()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1035
    invoke-static {v1, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    return-void

    :catchall_0
    move-exception v0

    .line 1015
    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception v0

    .line 1038
    iget-object p0, p0, Lorg/codeaurora/ims/ImsConfigImpl$9;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Checkin publish failed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
