.class public Lorg/codeaurora/ims/QtiRadioConfigAidl;
.super Ljava/lang/Object;
.source "QtiRadioConfigAidl.java"

# interfaces
.implements Lorg/codeaurora/ims/IQtiRadioConfig;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codeaurora/ims/QtiRadioConfigAidl$QtiRadioConfigDeathRecipient;
    }
.end annotation


# static fields
.field public static final CALL_PROGRESS_INFO_LIST:I = 0xc

.field public static final CONCURRENT_CONFERENCE_EMERGENCY_CALL:I = 0x8

.field public static final DEACTIVATE_ALL_CALL_BARRING:I = 0xd

.field public static final DSDS_TRANSITION:I = 0x2

.field public static final GLASSES_FREE_3D_VIDEO:I = 0x7

.field public static final INTELLIGENT_CALLING:I = 0x10

.field public static final INTERNAL_AIDL_REORDERING:I = 0x1

.field public static final INVALID_FEATURE:I = -0x1

.field static final QTI_RADIO_CONFIG_SERVICE_NAME:Ljava/lang/String; = "vendor.qti.hardware.radio.qtiradioconfig.IQtiRadioConfig/default"

.field public static final RTT_VT_CALLING:I = 0xb

.field public static final SIMULTANEOUS_CALLING:I = 0x9

.field public static final UVS_CRBT_CALL:I = 0x6

.field public static final VT_CALLING_OVER_PS_ATTACHED:I = 0xf


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private final mHalSync:Ljava/lang/Object;

.field private mIndication:Lorg/codeaurora/ims/IQtiRadioConfigIndication;

.field private mQtiRadioConfig:Lvendor/qti/hardware/radio/qtiradioconfig/IQtiRadioConfig;

.field private mQtiRadioConfigBinder:Landroid/os/IBinder;

.field private mQtiRadioConfigDeathRecipient:Lorg/codeaurora/ims/QtiRadioConfigAidl$QtiRadioConfigDeathRecipient;


# direct methods
.method static bridge synthetic -$$Nest$minitQtiRadioConfig(Lorg/codeaurora/ims/QtiRadioConfigAidl;)V
    .locals 0

    invoke-direct {p0}, Lorg/codeaurora/ims/QtiRadioConfigAidl;->initQtiRadioConfig()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mresetQtiRadioConfigHalInterfaces(Lorg/codeaurora/ims/QtiRadioConfigAidl;)V
    .locals 0

    invoke-direct {p0}, Lorg/codeaurora/ims/QtiRadioConfigAidl;->resetQtiRadioConfigHalInterfaces()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/codeaurora/ims/IQtiRadioConfigIndication;)V
    .locals 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/QtiRadioConfigAidl;->mHalSync:Ljava/lang/Object;

    .line 24
    const-string v0, "QtiRadioConfigAidl"

    iput-object v0, p0, Lorg/codeaurora/ims/QtiRadioConfigAidl;->LOG_TAG:Ljava/lang/String;

    .line 54
    iput-object p1, p0, Lorg/codeaurora/ims/QtiRadioConfigAidl;->mContext:Landroid/content/Context;

    .line 55
    iput-object p2, p0, Lorg/codeaurora/ims/QtiRadioConfigAidl;->mIndication:Lorg/codeaurora/ims/IQtiRadioConfigIndication;

    .line 56
    new-instance p1, Lorg/codeaurora/ims/QtiRadioConfigAidl$QtiRadioConfigDeathRecipient;

    invoke-direct {p1, p0}, Lorg/codeaurora/ims/QtiRadioConfigAidl$QtiRadioConfigDeathRecipient;-><init>(Lorg/codeaurora/ims/QtiRadioConfigAidl;)V

    iput-object p1, p0, Lorg/codeaurora/ims/QtiRadioConfigAidl;->mQtiRadioConfigDeathRecipient:Lorg/codeaurora/ims/QtiRadioConfigAidl$QtiRadioConfigDeathRecipient;

    .line 57
    invoke-direct {p0}, Lorg/codeaurora/ims/QtiRadioConfigAidl;->initQtiRadioConfig()V

    return-void
.end method

.method private getQtiRadioConfig()Lvendor/qti/hardware/radio/qtiradioconfig/IQtiRadioConfig;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 118
    iget-object v0, p0, Lorg/codeaurora/ims/QtiRadioConfigAidl;->mHalSync:Ljava/lang/Object;

    monitor-enter v0

    .line 119
    :try_start_0
    iget-object p0, p0, Lorg/codeaurora/ims/QtiRadioConfigAidl;->mQtiRadioConfig:Lvendor/qti/hardware/radio/qtiradioconfig/IQtiRadioConfig;

    if-eqz p0, :cond_0

    .line 120
    monitor-exit v0

    return-object p0

    .line 122
    :cond_0
    new-instance p0, Landroid/os/RemoteException;

    const-string v1, "mQtiRadioConfig is null"

    invoke-direct {p0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    .line 124
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private initQtiRadioConfig()V
    .locals 4

    .line 62
    :try_start_0
    const-string v0, "QtiRadioConfigAidl"

    const-string v1, "initQtiRadioConfig"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    const-string v0, "vendor.qti.hardware.radio.qtiradioconfig.IQtiRadioConfig/default"

    .line 64
    invoke-static {v0}, Landroid/os/ServiceManager;->waitForDeclaredService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 63
    invoke-static {v0}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    .line 66
    const-string v0, "QtiRadioConfigAidl"

    const-string v1, "initQtiRadioConfig failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 71
    :cond_0
    invoke-static {v0}, Lvendor/qti/hardware/radio/qtiradioconfig/IQtiRadioConfig$Stub;->asInterface(Landroid/os/IBinder;)Lvendor/qti/hardware/radio/qtiradioconfig/IQtiRadioConfig;

    move-result-object v1

    if-nez v1, :cond_1

    .line 74
    const-string v0, "QtiRadioConfigAidl"

    const-string v1, "Get binder for IQtiRadioConfig stable AIDL failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 78
    :cond_1
    iget-object v2, p0, Lorg/codeaurora/ims/QtiRadioConfigAidl;->mHalSync:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :try_start_1
    iput-object v0, p0, Lorg/codeaurora/ims/QtiRadioConfigAidl;->mQtiRadioConfigBinder:Landroid/os/IBinder;

    .line 80
    iput-object v1, p0, Lorg/codeaurora/ims/QtiRadioConfigAidl;->mQtiRadioConfig:Lvendor/qti/hardware/radio/qtiradioconfig/IQtiRadioConfig;

    .line 81
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 82
    :try_start_2
    iget-object v1, p0, Lorg/codeaurora/ims/QtiRadioConfigAidl;->mQtiRadioConfigDeathRecipient:Lorg/codeaurora/ims/QtiRadioConfigAidl$QtiRadioConfigDeathRecipient;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 83
    iget-object v0, p0, Lorg/codeaurora/ims/QtiRadioConfigAidl;->mIndication:Lorg/codeaurora/ims/IQtiRadioConfigIndication;

    invoke-interface {v0}, Lorg/codeaurora/ims/IQtiRadioConfigIndication;->onServiceUp()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catchall_0
    move-exception v0

    .line 81
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    .line 85
    const-string v1, "QtiRadioConfigAidl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "initQtiRadioConfig: Exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-direct {p0}, Lorg/codeaurora/ims/QtiRadioConfigAidl;->resetQtiRadioConfigHalInterfaces()V

    return-void
.end method

.method private resetQtiRadioConfigHalInterfaces()V
    .locals 3

    .line 128
    const-string v0, "QtiRadioConfigAidl"

    const-string v1, "resetQtiRadioConfigHalInterfaces: Resetting HAL interfaces."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object v0, p0, Lorg/codeaurora/ims/QtiRadioConfigAidl;->mIndication:Lorg/codeaurora/ims/IQtiRadioConfigIndication;

    invoke-interface {v0}, Lorg/codeaurora/ims/IQtiRadioConfigIndication;->onServiceDown()V

    .line 131
    iget-object v0, p0, Lorg/codeaurora/ims/QtiRadioConfigAidl;->mHalSync:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 132
    :try_start_0
    iput-object v1, p0, Lorg/codeaurora/ims/QtiRadioConfigAidl;->mQtiRadioConfig:Lvendor/qti/hardware/radio/qtiradioconfig/IQtiRadioConfig;

    .line 133
    iget-object v2, p0, Lorg/codeaurora/ims/QtiRadioConfigAidl;->mQtiRadioConfigBinder:Landroid/os/IBinder;

    .line 134
    iput-object v1, p0, Lorg/codeaurora/ims/QtiRadioConfigAidl;->mQtiRadioConfigBinder:Landroid/os/IBinder;

    .line 135
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 138
    :try_start_1
    iget-object p0, p0, Lorg/codeaurora/ims/QtiRadioConfigAidl;->mQtiRadioConfigDeathRecipient:Lorg/codeaurora/ims/QtiRadioConfigAidl$QtiRadioConfigDeathRecipient;

    const/4 v0, 0x0

    invoke-interface {v2, p0, v0}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 141
    const-string v0, "QtiRadioConfigAidl"

    const-string v1, "Failed to unlink IQtiRadioConfig death recipient"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    .line 135
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method


# virtual methods
.method public isFeatureSupported(I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 92
    const-string v0, "QtiRadioConfigAidl"

    .line 0
    const-string v1, "isFeatureSupported "

    .line 93
    invoke-static {p1}, Lorg/codeaurora/ims/StableAidl;->fromFeature(I)I

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-ne v2, v3, :cond_0

    return v4

    .line 96
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lorg/codeaurora/ims/QtiRadioConfigAidl;->getQtiRadioConfig()Lvendor/qti/hardware/radio/qtiradioconfig/IQtiRadioConfig;

    move-result-object p0

    invoke-interface {p0, v2}, Lvendor/qti/hardware/radio/qtiradioconfig/IQtiRadioConfig;->isFeatureSupported(I)Z

    move-result p0

    .line 97
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 100
    const-string p1, "isFeatureSupported Failed"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v4
.end method
