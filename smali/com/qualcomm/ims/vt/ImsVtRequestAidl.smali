.class public Lcom/qualcomm/ims/vt/ImsVtRequestAidl;
.super Ljava/lang/Object;
.source "ImsVtRequestAidl.java"

# interfaces
.implements Lcom/qualcomm/ims/vt/IImsMediaRequest;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/ims/vt/ImsVtRequestAidl$ImsVtServiceDeathRecipient;
    }
.end annotation


# static fields
.field private static final IIMS_VT_SERVICE_NAME:Ljava/lang/String; = "vendor.qti.ImsVtService.IImsVtRequest/ImsVtService"

.field static final LOG_TAG:Ljava/lang/String; = "ImsVtRequestAidl"


# instance fields
.field private mBinder:Landroid/os/IBinder;

.field private mDeathRecipient:Lcom/qualcomm/ims/vt/ImsVtRequestAidl$ImsVtServiceDeathRecipient;

.field private mImsMedia:Lcom/qualcomm/ims/vt/ImsMedia;

.field private volatile mImsVtRequest:Lvendor/qti/ImsVtService/IImsVtRequest;

.field private mImsVtServiceCallBack:Lcom/qualcomm/ims/vt/ImsVtServiceCallBackAidl;

.field private final mLock:Ljava/lang/Object;


# direct methods
.method static bridge synthetic -$$Nest$fgetmImsMedia(Lcom/qualcomm/ims/vt/ImsVtRequestAidl;)Lcom/qualcomm/ims/vt/ImsMedia;
    .locals 0

    iget-object p0, p0, Lcom/qualcomm/ims/vt/ImsVtRequestAidl;->mImsMedia:Lcom/qualcomm/ims/vt/ImsMedia;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mresetService(Lcom/qualcomm/ims/vt/ImsVtRequestAidl;)V
    .locals 0

    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsVtRequestAidl;->resetService()V

    return-void
.end method

.method public constructor <init>(Lcom/qualcomm/ims/vt/ImsMedia;)V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/ims/vt/ImsVtRequestAidl;->mLock:Ljava/lang/Object;

    .line 51
    iput-object p1, p0, Lcom/qualcomm/ims/vt/ImsVtRequestAidl;->mImsMedia:Lcom/qualcomm/ims/vt/ImsMedia;

    .line 52
    new-instance p1, Lcom/qualcomm/ims/vt/ImsVtRequestAidl$ImsVtServiceDeathRecipient;

    invoke-direct {p1, p0}, Lcom/qualcomm/ims/vt/ImsVtRequestAidl$ImsVtServiceDeathRecipient;-><init>(Lcom/qualcomm/ims/vt/ImsVtRequestAidl;)V

    iput-object p1, p0, Lcom/qualcomm/ims/vt/ImsVtRequestAidl;->mDeathRecipient:Lcom/qualcomm/ims/vt/ImsVtRequestAidl$ImsVtServiceDeathRecipient;

    .line 53
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsVtRequestAidl;->initImsVtService()V

    return-void
.end method

.method private imsVtRequest()Lvendor/qti/ImsVtService/IImsVtRequest;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsVtRequestAidl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 106
    :try_start_0
    iget-object p0, p0, Lcom/qualcomm/ims/vt/ImsVtRequestAidl;->mImsVtRequest:Lvendor/qti/ImsVtService/IImsVtRequest;

    .line 107
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private initImsVtService()V
    .locals 5

    const-string v0, "initImsVtService: imsVtRequest availability: "

    .line 117
    :try_start_0
    const-string v1, "vendor.qti.ImsVtService.IImsVtRequest/ImsVtService"

    invoke-static {v1}, Landroid/os/ServiceManager;->waitForService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_0

    .line 120
    const-string v0, "initImsVtService: binder is null."

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVtRequestAidl;->loge(Ljava/lang/String;)V

    return-void

    .line 125
    :cond_0
    invoke-static {v1}, Lvendor/qti/ImsVtService/IImsVtRequest$Stub;->asInterface(Landroid/os/IBinder;)Lvendor/qti/ImsVtService/IImsVtRequest;

    move-result-object v2

    if-nez v2, :cond_1

    .line 127
    const-string v0, "initImsVtService: imsVtRequest is null"

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVtRequestAidl;->loge(Ljava/lang/String;)V

    return-void

    .line 131
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz v2, :cond_2

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    move v4, v0

    .line 132
    :goto_0
    invoke-static {v4}, Lcom/qualcomm/ims/vt/ImsVtRequestAidl;->toAvailability(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 131
    invoke-direct {p0, v3}, Lcom/qualcomm/ims/vt/ImsVtRequestAidl;->log(Ljava/lang/String;)V

    .line 133
    new-instance v3, Lcom/qualcomm/ims/vt/ImsVtServiceCallBackAidl;

    iget-object v4, p0, Lcom/qualcomm/ims/vt/ImsVtRequestAidl;->mImsMedia:Lcom/qualcomm/ims/vt/ImsMedia;

    invoke-direct {v3, v4}, Lcom/qualcomm/ims/vt/ImsVtServiceCallBackAidl;-><init>(Lcom/qualcomm/ims/vt/ImsMedia;)V

    .line 135
    iget-object v4, p0, Lcom/qualcomm/ims/vt/ImsVtRequestAidl;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    :try_start_1
    iput-object v1, p0, Lcom/qualcomm/ims/vt/ImsVtRequestAidl;->mBinder:Landroid/os/IBinder;

    .line 137
    iput-object v2, p0, Lcom/qualcomm/ims/vt/ImsVtRequestAidl;->mImsVtRequest:Lvendor/qti/ImsVtService/IImsVtRequest;

    .line 138
    iput-object v3, p0, Lcom/qualcomm/ims/vt/ImsVtRequestAidl;->mImsVtServiceCallBack:Lcom/qualcomm/ims/vt/ImsVtServiceCallBackAidl;

    .line 139
    iget-object v2, p0, Lcom/qualcomm/ims/vt/ImsVtRequestAidl;->mImsVtRequest:Lvendor/qti/ImsVtService/IImsVtRequest;

    iget-object v3, p0, Lcom/qualcomm/ims/vt/ImsVtRequestAidl;->mImsVtServiceCallBack:Lcom/qualcomm/ims/vt/ImsVtServiceCallBackAidl;

    invoke-interface {v2, v3}, Lvendor/qti/ImsVtService/IImsVtRequest;->registerCallBack(Lvendor/qti/ImsVtService/IImsVtCallBack;)V

    .line 140
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 141
    :try_start_2
    iget-object v2, p0, Lcom/qualcomm/ims/vt/ImsVtRequestAidl;->mDeathRecipient:Lcom/qualcomm/ims/vt/ImsVtRequestAidl$ImsVtServiceDeathRecipient;

    invoke-interface {v1, v2, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catchall_0
    move-exception v0

    .line 140
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    .line 144
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "initImsVtService: Exception: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVtRequestAidl;->loge(Ljava/lang/String;)V

    .line 145
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsVtRequestAidl;->resetService()V

    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 0

    .line 57
    const-string p0, "ImsVtRequestAidl"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 0

    .line 65
    const-string p0, "ImsVtRequestAidl"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private logv(Ljava/lang/String;)V
    .locals 0

    .line 61
    const-string p0, "ImsVtRequestAidl"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private resetService()V
    .locals 3

    .line 85
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsVtRequestAidl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 86
    :try_start_0
    iput-object v1, p0, Lcom/qualcomm/ims/vt/ImsVtRequestAidl;->mImsVtRequest:Lvendor/qti/ImsVtService/IImsVtRequest;

    .line 87
    iput-object v1, p0, Lcom/qualcomm/ims/vt/ImsVtRequestAidl;->mImsVtServiceCallBack:Lcom/qualcomm/ims/vt/ImsVtServiceCallBackAidl;

    .line 88
    iget-object v2, p0, Lcom/qualcomm/ims/vt/ImsVtRequestAidl;->mBinder:Landroid/os/IBinder;

    .line 89
    iput-object v1, p0, Lcom/qualcomm/ims/vt/ImsVtRequestAidl;->mBinder:Landroid/os/IBinder;

    .line 90
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 93
    :try_start_1
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsVtRequestAidl;->mDeathRecipient:Lcom/qualcomm/ims/vt/ImsVtRequestAidl$ImsVtServiceDeathRecipient;

    const/4 v1, 0x0

    invoke-interface {v2, v0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    const-string v0, "Failed to unlink death recipient"

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVtRequestAidl;->loge(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 98
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "VT service binder is null"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVtRequestAidl;->loge(Ljava/lang/String;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    .line 90
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method private static toAvailability(Z)Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_0

    .line 155
    const-string p0, "available"

    return-object p0

    :cond_0
    const-string p0, "unavailable"

    return-object p0
.end method


# virtual methods
.method public deInit(I)V
    .locals 2

    .line 170
    const-string v0, " > deInit"

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVtRequestAidl;->log(Ljava/lang/String;)V

    .line 172
    :try_start_0
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsVtRequestAidl;->imsVtRequest()Lvendor/qti/ImsVtService/IImsVtRequest;

    move-result-object v0

    invoke-interface {v0, p1}, Lvendor/qti/ImsVtService/IImsVtRequest;->deInit(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "deInit exception: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/ImsVtRequestAidl;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public dualVtAnswer(IIII)V
    .locals 1

    .line 323
    const-string v0, " > dualVtAnswer"

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVtRequestAidl;->log(Ljava/lang/String;)V

    .line 325
    :try_start_0
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsVtRequestAidl;->imsVtRequest()Lvendor/qti/ImsVtService/IImsVtRequest;

    move-result-object v0

    .line 326
    invoke-static {p3}, Lcom/qualcomm/ims/vt/ImsVtAidlUtils;->fromDualVtDirection(I)I

    move-result p3

    .line 327
    invoke-static {p4}, Lcom/qualcomm/ims/vt/ImsVtAidlUtils;->fromDualVtStatusCode(I)I

    move-result p4

    .line 325
    invoke-interface {v0, p1, p2, p3, p4}, Lvendor/qti/ImsVtService/IImsVtRequest;->dualVtAnswer(IIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 329
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "dualVtAnswer exception: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/ImsVtRequestAidl;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public dualVtRequest(III)V
    .locals 1

    .line 312
    const-string v0, " > dualVtRequest"

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVtRequestAidl;->log(Ljava/lang/String;)V

    .line 314
    :try_start_0
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsVtRequestAidl;->imsVtRequest()Lvendor/qti/ImsVtService/IImsVtRequest;

    move-result-object v0

    .line 315
    invoke-static {p3}, Lcom/qualcomm/ims/vt/ImsVtAidlUtils;->fromDualVtDirection(I)I

    move-result p3

    .line 314
    invoke-interface {v0, p1, p2, p3}, Lvendor/qti/ImsVtService/IImsVtRequest;->dualVtRequest(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 317
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "dualVtRequest exception: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/ImsVtRequestAidl;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public init(I)V
    .locals 2

    .line 160
    const-string v0, " > init"

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVtRequestAidl;->log(Ljava/lang/String;)V

    .line 162
    :try_start_0
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsVtRequestAidl;->imsVtRequest()Lvendor/qti/ImsVtService/IImsVtRequest;

    move-result-object v0

    invoke-interface {v0, p1}, Lvendor/qti/ImsVtService/IImsVtRequest;->init(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "init exception: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/ImsVtRequestAidl;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public isAlive()Z
    .locals 0

    .line 151
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsVtRequestAidl;->imsVtRequest()Lvendor/qti/ImsVtService/IImsVtRequest;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public requestRtpDataUsage(II)V
    .locals 2

    .line 279
    const-string v0, " > requestRtpDataUsage"

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVtRequestAidl;->log(Ljava/lang/String;)V

    .line 281
    :try_start_0
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsVtRequestAidl;->imsVtRequest()Lvendor/qti/ImsVtService/IImsVtRequest;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1}, Lvendor/qti/ImsVtService/IImsVtRequest;->requestRtpDataUsage(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 284
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "requestRtpDatausage exception: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/ImsVtRequestAidl;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public setCameraInfo(IIII)V
    .locals 1

    .line 255
    const-string v0, " > setCameraInfo"

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVtRequestAidl;->log(Ljava/lang/String;)V

    .line 259
    :try_start_0
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsVtRequestAidl;->imsVtRequest()Lvendor/qti/ImsVtService/IImsVtRequest;

    move-result-object v0

    invoke-static {p2}, Lcom/qualcomm/ims/vt/ImsVtAidlUtils;->fromCameraFacing(I)I

    move-result p2

    .line 260
    invoke-static {p4}, Lcom/qualcomm/ims/vt/ImsVtAidlUtils;->fromStream(I)I

    move-result p4

    .line 259
    invoke-interface {v0, p1, p2, p3, p4}, Lvendor/qti/ImsVtService/IImsVtRequest;->setCameraInfo(IIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 262
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "setCameraInfo exception: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/ImsVtRequestAidl;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public setDeviceOrientation(II)V
    .locals 2

    .line 180
    const-string v0, " > setDeviceOrientation"

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVtRequestAidl;->log(Ljava/lang/String;)V

    .line 182
    :try_start_0
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsVtRequestAidl;->imsVtRequest()Lvendor/qti/ImsVtService/IImsVtRequest;

    move-result-object v0

    .line 183
    invoke-static {p2}, Lcom/qualcomm/ims/vt/ImsVtAidlUtils;->fromOrientation(I)I

    move-result p2

    const/4 v1, 0x0

    .line 182
    invoke-interface {v0, p1, p2, v1}, Lvendor/qti/ImsVtService/IImsVtRequest;->setDeviceOrientation(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 185
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "setDeviceOrientation exception: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/ImsVtRequestAidl;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public setFarEndSurface(ILandroid/view/Surface;I)V
    .locals 1

    .line 268
    const-string v0, " > setFarEndSurface"

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVtRequestAidl;->log(Ljava/lang/String;)V

    .line 270
    :try_start_0
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsVtRequestAidl;->imsVtRequest()Lvendor/qti/ImsVtService/IImsVtRequest;

    move-result-object v0

    .line 271
    invoke-static {p3}, Lcom/qualcomm/ims/vt/ImsVtAidlUtils;->fromStream(I)I

    move-result p3

    .line 270
    invoke-interface {v0, p1, p2, p3}, Lvendor/qti/ImsVtService/IImsVtRequest;->setFarEndSurface(ILandroid/view/Surface;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 273
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "setFarEndSurface exception: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/ImsVtRequestAidl;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public setLocalRenderingDelay(II)V
    .locals 2

    .line 301
    const-string v0, " > setLocalRenderingDelay"

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVtRequestAidl;->log(Ljava/lang/String;)V

    .line 303
    :try_start_0
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsVtRequestAidl;->imsVtRequest()Lvendor/qti/ImsVtService/IImsVtRequest;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1}, Lvendor/qti/ImsVtService/IImsVtRequest;->setLocalRenderingDelay(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 306
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "setLocalRenderingDelay exception: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/ImsVtRequestAidl;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public setLocalRenderingParameters(III)V
    .locals 2

    .line 290
    const-string v0, " > setLocalRenderingParameters"

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVtRequestAidl;->log(Ljava/lang/String;)V

    .line 292
    :try_start_0
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsVtRequestAidl;->imsVtRequest()Lvendor/qti/ImsVtService/IImsVtRequest;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, p3, v1}, Lvendor/qti/ImsVtService/IImsVtRequest;->setLocalRenderingParameters(IIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 295
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "setLocalRenderingParameters exception: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/ImsVtRequestAidl;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public setSharedDisplayParameters(III)V
    .locals 2

    .line 191
    const-string v0, " > setSharedDisplayParameters"

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVtRequestAidl;->log(Ljava/lang/String;)V

    .line 193
    :try_start_0
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsVtRequestAidl;->imsVtRequest()Lvendor/qti/ImsVtService/IImsVtRequest;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, p3, v1}, Lvendor/qti/ImsVtService/IImsVtRequest;->setSharedDisplayParameters(IIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 196
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "setSharedDisplayParameters exception: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/ImsVtRequestAidl;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public setVideoImageBuffer(I[III)V
    .locals 14

    move-object/from16 v0, p2

    const-string v1, "setVideoImageBuffer exception: "

    .line 202
    const-string v2, " > setVideoImageBuffer"

    invoke-direct {p0, v2}, Lcom/qualcomm/ims/vt/ImsVtRequestAidl;->log(Ljava/lang/String;)V

    .line 207
    const-string v2, "Error closing SharedMemory: "

    const-string v3, "Error closing ParcelFileDescriptor: "

    const-string v4, "Error unmapping SharedMemory: "

    const/4 v5, 0x0

    if-eqz v0, :cond_3

    :try_start_0
    array-length v6, v0

    if-gtz v6, :cond_0

    goto/16 :goto_4

    .line 213
    :cond_0
    array-length v6, v0

    mul-int/lit8 v6, v6, 0x4

    .line 214
    const-string v7, "video_image_buffer"

    invoke-static {v7, v6}, Landroid/os/SharedMemory;->create(Ljava/lang/String;I)Landroid/os/SharedMemory;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 215
    :try_start_1
    invoke-virtual {v6}, Landroid/os/SharedMemory;->mapReadWrite()Ljava/nio/ByteBuffer;

    move-result-object v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 216
    :try_start_2
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 219
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;

    .line 222
    invoke-virtual {v6}, Landroid/os/SharedMemory;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-static {v0}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v10
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 224
    :try_start_3
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsVtRequestAidl;->imsVtRequest()Lvendor/qti/ImsVtService/IImsVtRequest;

    move-result-object v8

    const/4 v13, 0x0

    move v9, p1

    move/from16 v11, p3

    move/from16 v12, p4

    invoke-interface/range {v8 .. v13}, Lvendor/qti/ImsVtService/IImsVtRequest;->setVideoImageBuffer(ILandroid/os/ParcelFileDescriptor;III)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v7, :cond_1

    .line 231
    :try_start_4
    invoke-static {v7}, Landroid/os/SharedMemory;->unmap(Ljava/nio/ByteBuffer;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/ImsVtRequestAidl;->loge(Ljava/lang/String;)V

    :cond_1
    :goto_0
    if-eqz v10, :cond_2

    .line 238
    :try_start_5
    invoke-virtual {v10}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    move-object p1, v0

    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/ImsVtRequestAidl;->loge(Ljava/lang/String;)V

    :cond_2
    :goto_1
    if-eqz v6, :cond_6

    .line 245
    :try_start_6
    invoke-virtual {v6}, Landroid/os/SharedMemory;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_9

    :catch_2
    move-exception v0

    move-object p1, v0

    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/16 :goto_8

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_2

    :catch_3
    move-exception v0

    move-object p1, v0

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object p1, v0

    move-object v10, v5

    :goto_2
    move-object v5, v7

    goto/16 :goto_a

    :catch_4
    move-exception v0

    move-object p1, v0

    move-object v10, v5

    :goto_3
    move-object v5, v7

    goto :goto_5

    :catchall_2
    move-exception v0

    move-object p1, v0

    move-object v10, v5

    goto/16 :goto_a

    :catch_5
    move-exception v0

    move-object p1, v0

    move-object v10, v5

    goto :goto_5

    .line 208
    :cond_3
    :goto_4
    :try_start_7
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsVtRequestAidl;->imsVtRequest()Lvendor/qti/ImsVtService/IImsVtRequest;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v11, 0x0

    move v7, p1

    move/from16 v9, p3

    move/from16 v10, p4

    invoke-interface/range {v6 .. v11}, Lvendor/qti/ImsVtService/IImsVtRequest;->setVideoImageBuffer(ILandroid/os/ParcelFileDescriptor;III)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    return-void

    :catchall_3
    move-exception v0

    move-object p1, v0

    move-object v6, v5

    move-object v10, v6

    goto :goto_a

    :catch_6
    move-exception v0

    move-object p1, v0

    move-object v6, v5

    move-object v10, v6

    .line 227
    :goto_5
    :try_start_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/ImsVtRequestAidl;->loge(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    if-eqz v5, :cond_4

    .line 231
    :try_start_9
    invoke-static {v5}, Landroid/os/SharedMemory;->unmap(Ljava/nio/ByteBuffer;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    goto :goto_6

    :catch_7
    move-exception v0

    move-object p1, v0

    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/ImsVtRequestAidl;->loge(Ljava/lang/String;)V

    :cond_4
    :goto_6
    if-eqz v10, :cond_5

    .line 238
    :try_start_a
    invoke-virtual {v10}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_8

    goto :goto_7

    :catch_8
    move-exception v0

    move-object p1, v0

    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/ImsVtRequestAidl;->loge(Ljava/lang/String;)V

    :cond_5
    :goto_7
    if-eqz v6, :cond_6

    .line 245
    :try_start_b
    invoke-virtual {v6}, Landroid/os/SharedMemory;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_9

    goto :goto_9

    :catch_9
    move-exception v0

    move-object p1, v0

    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/ImsVtRequestAidl;->loge(Ljava/lang/String;)V

    :cond_6
    :goto_9
    return-void

    :catchall_4
    move-exception v0

    move-object p1, v0

    :goto_a
    if-eqz v5, :cond_7

    .line 231
    :try_start_c
    invoke-static {v5}, Landroid/os/SharedMemory;->unmap(Ljava/nio/ByteBuffer;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_a

    goto :goto_b

    :catch_a
    move-exception v0

    .line 233
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVtRequestAidl;->loge(Ljava/lang/String;)V

    :cond_7
    :goto_b
    if-eqz v10, :cond_8

    .line 238
    :try_start_d
    invoke-virtual {v10}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_b

    goto :goto_c

    :catch_b
    move-exception v0

    .line 240
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVtRequestAidl;->loge(Ljava/lang/String;)V

    :cond_8
    :goto_c
    if-eqz v6, :cond_9

    .line 245
    :try_start_e
    invoke-virtual {v6}, Landroid/os/SharedMemory;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_c

    goto :goto_d

    :catch_c
    move-exception v0

    .line 247
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVtRequestAidl;->loge(Ljava/lang/String;)V

    .line 250
    :cond_9
    :goto_d
    throw p1
.end method
