.class public Lcom/qualcomm/ims/vt/ImsMedia;
.super Landroid/os/Handler;
.source "ImsMedia.java"

# interfaces
.implements Lorg/codeaurora/ims/ImsConferenceController$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;,
        Lcom/qualcomm/ims/vt/ImsMedia$IMediaListener;,
        Lcom/qualcomm/ims/vt/ImsMedia$DualVtCallbackInfo;,
        Lcom/qualcomm/ims/vt/ImsMedia$MediaStateListener;,
        Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaEvent;,
        Lcom/qualcomm/ims/vt/ImsMedia$CameraListener;
    }
.end annotation


# static fields
.field private static final CACHED_MEDIA_EVENT:I = 0x6d

.field private static final CAMERA_FRAME_RATE_CHANGE_EVT:I = 0x6a

.field private static final CAMERA_PARAM_READY_EVT:I = 0x65

.field private static final DATA_USAGE_EVT:I = 0x69

.field private static final DEVICE_READY_EVENT:I = 0x6b

.field private static final DISPLAY_MODE_EVT:I = 0x66

.field private static final DOWN_SCALE_EVENT:I = 0x6c

.field private static final DUAL_VT_CAPABILITY_EVT:I = 0x6e

.field private static final DUAL_VT_INCOMING_CB_EVT:I = 0x70

.field private static final DUAL_VT_RESPONSE_CB_EVT:I = 0x6f

.field public static final MEDIA_EVENT:I = 0x64

.field private static final PEER_RESOLUTION_CHANGE_EVT:I = 0x67

.field public static final PLAYER_STATE_STARTED:I = 0x0

.field public static final PLAYER_STATE_STOPPED:I = 0x1

.field private static final RESPONSE_CB_EVT:I = 0x71

.field private static final TAG:Ljava/lang/String; = "VideoCall_ImsMedia"

.field private static final VIDEO_QUALITY_EVT:I = 0x68

.field private static final VT_SERVICE_DISCONNECTED_EVT:I = 0x72

.field private static mInitCalledFlag:Z = false

.field private static mInstance:Lcom/qualcomm/ims/vt/ImsMedia;


# instance fields
.field private mArStatus:I

.field private mCachedMediaEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final mCameraListener:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/qualcomm/ims/vt/ImsMedia$CameraListener;",
            ">;"
        }
    .end annotation
.end field

.field private mClientHandle:I

.field private mCodec:Ljava/lang/String;

.field private mData:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;",
            ">;"
        }
    .end annotation
.end field

.field private mDualVtMessages:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private mImsVtRequest:Lcom/qualcomm/ims/vt/IImsMediaRequest;

.field private mIsDeInitInProgress:Z

.field private mIsMediaLoopback:Z

.field private mIsParamReady:Z

.field private mMediaListener:Lcom/qualcomm/ims/vt/ImsMedia$IMediaListener;

.field private final mMediaStateListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/qualcomm/ims/vt/ImsMedia$MediaStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingInit:Z

.field private mRecorderFrameRate:I

.field private mScreenShareStatus:I

.field private mShouldCacheMediaEvents:Z

.field private mUpdateCameraParams:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmClientHandle(Lcom/qualcomm/ims/vt/ImsMedia;)I
    .locals 0

    iget p0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mClientHandle:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmCodec(Lcom/qualcomm/ims/vt/ImsMedia;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mCodec:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmImsVtRequest(Lcom/qualcomm/ims/vt/ImsMedia;)Lcom/qualcomm/ims/vt/IImsMediaRequest;
    .locals 0

    iget-object p0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mImsVtRequest:Lcom/qualcomm/ims/vt/IImsMediaRequest;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$misImsVtRequestAlive(Lcom/qualcomm/ims/vt/ImsMedia;)Z
    .locals 0

    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsMedia;->isImsVtRequestAlive()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smlog(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smloge(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/qualcomm/ims/vt/ImsMedia;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 489
    const-string v0, "SurfaceUtil_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 429
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsMedia;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Looper;)V
    .locals 1

    .line 433
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 p1, 0x0

    .line 387
    iput-boolean p1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mShouldCacheMediaEvents:Z

    .line 388
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mCachedMediaEvents:Ljava/util/List;

    .line 390
    iput-boolean p1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mIsMediaLoopback:Z

    const/4 v0, 0x6

    .line 391
    iput v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mScreenShareStatus:I

    .line 392
    iput-boolean p1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mIsParamReady:Z

    const/16 v0, 0x9

    .line 393
    iput v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mArStatus:I

    .line 395
    iput-boolean p1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mUpdateCameraParams:Z

    .line 396
    const-string v0, "video/avc"

    iput-object v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mCodec:Ljava/lang/String;

    .line 399
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mMediaStateListeners:Ljava/util/List;

    .line 401
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mCameraListener:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 406
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mData:Ljava/util/concurrent/ConcurrentHashMap;

    .line 408
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mDualVtMessages:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v0, -0x1

    .line 411
    iput v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mClientHandle:I

    .line 412
    iput-boolean p1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mIsDeInitInProgress:Z

    .line 413
    iput-boolean p1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mPendingInit:Z

    return-void
.end method

.method private cleanup()V
    .locals 2

    .line 630
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mImsVtRequest:Lcom/qualcomm/ims/vt/IImsMediaRequest;

    if-nez v0, :cond_0

    .line 631
    const-string p0, "cleanup: already cleaned up, skipping"

    invoke-static {p0}, Lcom/qualcomm/ims/vt/ImsMedia;->logw(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, -0x1

    .line 634
    iput v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mClientHandle:I

    .line 635
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsMedia;->notifyOnMediaDeinitialized()V

    const/4 v0, 0x0

    .line 636
    sput-boolean v0, Lcom/qualcomm/ims/vt/ImsMedia;->mInitCalledFlag:Z

    const/4 v1, 0x6

    .line 637
    iput v1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mScreenShareStatus:I

    .line 638
    iput-boolean v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mIsParamReady:Z

    const/16 v0, 0x9

    .line 639
    iput v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mArStatus:I

    .line 640
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsMedia;->clearMediaEventCache()V

    .line 641
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsMedia;->clearMediaData()V

    const/4 v0, 0x0

    .line 642
    iput-object v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mImsVtRequest:Lcom/qualcomm/ims/vt/IImsMediaRequest;

    return-void
.end method

.method private clearMediaEventCache()V
    .locals 1

    const/4 v0, 0x0

    .line 845
    iput-boolean v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mShouldCacheMediaEvents:Z

    .line 846
    iget-object p0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mCachedMediaEvents:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method private configScreenShare(Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;)V
    .locals 2

    .line 915
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsMedia;->isImsVtRequestAlive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 916
    const-string p0, "ImsVtRequest service is not alive"

    invoke-static {p0}, Lcom/qualcomm/ims/vt/ImsMedia;->loge(Ljava/lang/String;)V

    return-void

    .line 920
    :cond_0
    invoke-static {p1}, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->-$$Nest$mcalculateSharedDisplayParams(Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;)V

    .line 921
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mImsVtRequest:Lcom/qualcomm/ims/vt/IImsMediaRequest;

    iget p0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mClientHandle:I

    .line 922
    invoke-static {p1}, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->-$$Nest$mgetSharedDisplayWidth(Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;)I

    move-result v1

    invoke-static {p1}, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->-$$Nest$mgetSharedDisplayHeight(Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;)I

    move-result p1

    .line 921
    invoke-interface {v0, p0, v1, p1}, Lcom/qualcomm/ims/vt/IImsMediaRequest;->setSharedDisplayParameters(III)V

    return-void
.end method

.method private convertToCapability(I)I
    .locals 1

    const/4 p0, 0x1

    if-eqz p1, :cond_2

    const/4 v0, 0x2

    if-eq p1, p0, :cond_1

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x3

    return p0

    :cond_1
    return v0

    :cond_2
    return p0
.end method

.method private doOnCachedMediaEvent()V
    .locals 4

    .line 827
    const-string v0, "doOnCachedMediaEvent: scheduling the cache"

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 828
    sget-boolean v0, Lcom/qualcomm/ims/vt/ImsMedia;->mInitCalledFlag:Z

    if-nez v0, :cond_0

    .line 829
    const-string v0, "VT service deinitialized. Do not process cached events"

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->logw(Ljava/lang/String;)V

    .line 830
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsMedia;->clearMediaEventCache()V

    return-void

    .line 834
    :cond_0
    monitor-enter p0

    .line 835
    :try_start_0
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mCachedMediaEvents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaEvent;

    .line 836
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doOnCachedMediaEvent: scheduling eventId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaEvent;->eventId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mediaId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaEvent;->mediaId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " stream : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaEvent;->stream:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 838
    iget v2, v1, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaEvent;->eventId:I

    iget v3, v1, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaEvent;->mediaId:I

    iget v1, v1, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaEvent;->stream:I

    invoke-direct {p0, v2, v3, v1}, Lcom/qualcomm/ims/vt/ImsMedia;->doOnMediaEvent(III)V

    goto :goto_0

    .line 840
    :cond_1
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsMedia;->clearMediaEventCache()V

    .line 841
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private doOnMediaEvent(III)V
    .locals 8

    .line 1258
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Received media event for stream: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 1259
    sget-boolean v0, Lcom/qualcomm/ims/vt/ImsMedia;->mInitCalledFlag:Z

    if-nez v0, :cond_0

    .line 1260
    const-string p0, "VT lib deinitialized. Do not cache events"

    invoke-static {p0}, Lcom/qualcomm/ims/vt/ImsMedia;->logw(Ljava/lang/String;)V

    return-void

    .line 1263
    :cond_0
    invoke-direct {p0, p3}, Lcom/qualcomm/ims/vt/ImsMedia;->getImsMediaData(I)Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v2, :cond_d

    const/4 v3, 0x2

    if-eq p1, v3, :cond_c

    const/4 v3, 0x3

    if-eq p1, v3, :cond_b

    const/4 v3, 0x4

    if-eq p1, v3, :cond_a

    const/16 v3, 0x9

    const/4 v4, 0x6

    const/16 v5, 0x8

    const/4 v6, 0x7

    const/4 v7, -0x1

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    .line 1380
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "Received unknown event id="

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/qualcomm/ims/vt/ImsMedia;->loge(Ljava/lang/String;)V

    return-void

    .line 1320
    :pswitch_0
    const-string p1, "Received DOWN_SCALE_EVENT."

    invoke-static {p1}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 1321
    iget p1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mScreenShareStatus:I

    if-eq p1, v6, :cond_1

    if-ne p1, v5, :cond_e

    .line 1323
    :cond_1
    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsMedia;->configScreenShare(Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;)V

    return-void

    .line 1284
    :pswitch_1
    const-string p1, "Received DEVICE_READY_EVENT."

    invoke-static {p1}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 1285
    iget p1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mScreenShareStatus:I

    if-ne p1, v6, :cond_2

    .line 1286
    iget-object p0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mMediaListener:Lcom/qualcomm/ims/vt/ImsMedia$IMediaListener;

    if-eqz p0, :cond_e

    .line 1288
    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->-$$Nest$mgetRecordingSurface(Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;)Landroid/view/Surface;

    move-result-object p1

    .line 1289
    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->-$$Nest$mgetSharedDisplayWidth(Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;)I

    move-result p3

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->-$$Nest$mgetSharedDisplayHeight(Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;)I

    move-result v0

    .line 1287
    invoke-interface {p0, p2, p1, p3, v0}, Lcom/qualcomm/ims/vt/ImsMedia$IMediaListener;->onRecordingSurfaceChanged(ILandroid/view/Surface;II)V

    return-void

    .line 1291
    :cond_2
    iget v1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mArStatus:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_3

    .line 1292
    iget-object p0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mMediaListener:Lcom/qualcomm/ims/vt/ImsMedia$IMediaListener;

    if-eqz p0, :cond_e

    .line 1294
    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->-$$Nest$mgetRecordingSurface(Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;)Landroid/view/Surface;

    move-result-object p1

    .line 1295
    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->-$$Nest$mgetWidth(Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;)I

    move-result p3

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->-$$Nest$mgetHeight(Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;)I

    move-result v0

    .line 1293
    invoke-interface {p0, p2, p1, p3, v0}, Lcom/qualcomm/ims/vt/ImsMedia$IMediaListener;->onRecordingSurfaceChanged(ILandroid/view/Surface;II)V

    return-void

    :cond_3
    if-eq p1, v4, :cond_4

    if-ne v1, v3, :cond_e

    .line 1300
    :cond_4
    iget-object p1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mMediaListener:Lcom/qualcomm/ims/vt/ImsMedia$IMediaListener;

    if-eqz p1, :cond_5

    const/4 v1, 0x0

    .line 1301
    invoke-interface {p1, p2, v1, v7, v7}, Lcom/qualcomm/ims/vt/ImsMedia$IMediaListener;->onRecordingSurfaceChanged(ILandroid/view/Surface;II)V

    .line 1304
    :cond_5
    invoke-direct {p0, p2, v0, p3}, Lcom/qualcomm/ims/vt/ImsMedia;->onCameraConfigChanged(ILcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;I)V

    return-void

    .line 1372
    :pswitch_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Received CAMERA_FRAME_RATE_CHANGE_EVT, rate="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mRecorderFrameRate:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 1373
    iget p1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mRecorderFrameRate:I

    if-lez p1, :cond_e

    .line 1374
    iget-object p1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mCameraListener:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qualcomm/ims/vt/ImsMedia$CameraListener;

    .line 1375
    iget v1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mRecorderFrameRate:I

    invoke-interface {v0, p2, v1, p3}, Lcom/qualcomm/ims/vt/ImsMedia$CameraListener;->onUpdateRecorderFrameRate(III)V

    goto :goto_0

    .line 1367
    :pswitch_3
    iget-object p0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mMediaListener:Lcom/qualcomm/ims/vt/ImsMedia$IMediaListener;

    if-eqz p0, :cond_e

    .line 1368
    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->-$$Nest$mgetVideoQualityLevel(Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;)I

    move-result p1

    invoke-interface {p0, p2, p1}, Lcom/qualcomm/ims/vt/ImsMedia$IMediaListener;->onVideoQualityEvent(II)V

    return-void

    .line 1327
    :pswitch_4
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Received PEER_RESOLUTION_CHANGE_EVENT. Updating peer values mPeerHeight = "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1328
    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->-$$Nest$mgetPeerHeight(Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mPeerWidth = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->-$$Nest$mgetPeerWidth(Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1327
    invoke-static {p1}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 1329
    iget-object p0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mMediaListener:Lcom/qualcomm/ims/vt/ImsMedia$IMediaListener;

    if-eqz p0, :cond_e

    .line 1330
    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->-$$Nest$mgetPeerWidth(Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;)I

    move-result p1

    .line 1331
    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->-$$Nest$mgetPeerHeight(Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;)I

    move-result v0

    .line 1330
    invoke-interface {p0, p2, p1, v0, p3}, Lcom/qualcomm/ims/vt/ImsMedia$IMediaListener;->onPeerResolutionChanged(IIII)V

    return-void

    .line 1348
    :pswitch_5
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "Received DISPLAY_MODE_EVT uiOrientationMode = "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->-$$Nest$mgetOrientationMode(Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;)I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 1349
    iget-object p0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mMediaListener:Lcom/qualcomm/ims/vt/ImsMedia$IMediaListener;

    if-eqz p0, :cond_e

    .line 1350
    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->-$$Nest$mgetOrientationMode(Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;)I

    move-result p1

    invoke-interface {p0, p2, p1}, Lcom/qualcomm/ims/vt/ImsMedia$IMediaListener;->onOrientationModeChanged(II)V

    return-void

    .line 1266
    :pswitch_6
    iget-boolean p1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mUpdateCameraParams:Z

    if-eqz p1, :cond_6

    iget p1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mScreenShareStatus:I

    if-ne p1, v4, :cond_6

    iget p1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mArStatus:I

    if-ne p1, v3, :cond_6

    .line 1269
    const-string p1, "Received PARAM_READY_EVT and not in Screen Share modeOr AR call, Updating negotiated values"

    invoke-static {p1}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 1271
    iput-boolean v1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mUpdateCameraParams:Z

    .line 1272
    invoke-direct {p0, p2, v0, p3}, Lcom/qualcomm/ims/vt/ImsMedia;->onCameraConfigChanged(ILcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;I)V

    goto :goto_2

    .line 1273
    :cond_6
    iget p1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mScreenShareStatus:I

    if-eq p1, v5, :cond_8

    if-ne p1, v6, :cond_7

    goto :goto_1

    .line 1276
    :cond_7
    iget p1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mArStatus:I

    const/16 p2, 0xb

    if-ne p1, p2, :cond_9

    .line 1277
    invoke-static {v0, v2}, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->-$$Nest$msetLocalRenderingParams(Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;Z)V

    goto :goto_2

    .line 1275
    :cond_8
    :goto_1
    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsMedia;->configScreenShare(Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;)V

    .line 1279
    :cond_9
    :goto_2
    iput-boolean v2, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mIsParamReady:Z

    .line 1280
    invoke-static {v0, v7, v7}, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->-$$Nest$msetDownscaledDimensions(Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;II)V

    return-void

    .line 1342
    :cond_a
    const-string p1, "Received RECORDER_STOP_EVENT"

    invoke-static {p1}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 1343
    iget-object p0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mCameraListener:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/qualcomm/ims/vt/ImsMedia$CameraListener;

    .line 1344
    invoke-interface {p1, p2, p3}, Lcom/qualcomm/ims/vt/ImsMedia$CameraListener;->onRecordingDisabled(II)V

    goto :goto_3

    .line 1335
    :cond_b
    const-string p1, "Received RECORDER_START_EVENT. Camera recording can be started"

    invoke-static {p1}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 1336
    iget-object p0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mCameraListener:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/qualcomm/ims/vt/ImsMedia$CameraListener;

    .line 1337
    invoke-interface {p1, p2, p3}, Lcom/qualcomm/ims/vt/ImsMedia$CameraListener;->onRecordingEnabled(II)V

    goto :goto_4

    .line 1361
    :cond_c
    const-string p1, "Received PLAYER_STOP_EVT"

    invoke-static {p1}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 1362
    iget-object p0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mMediaListener:Lcom/qualcomm/ims/vt/ImsMedia$IMediaListener;

    if-eqz p0, :cond_e

    .line 1363
    invoke-interface {p0, p2, v2, p3}, Lcom/qualcomm/ims/vt/ImsMedia$IMediaListener;->onPlayerStateChanged(III)V

    return-void

    .line 1354
    :cond_d
    const-string p1, "Received PLAYER_START_EVT"

    invoke-static {p1}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 1355
    iget-object p0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mMediaListener:Lcom/qualcomm/ims/vt/ImsMedia$IMediaListener;

    if-eqz p0, :cond_e

    .line 1356
    invoke-interface {p0, p2, v1, p3}, Lcom/qualcomm/ims/vt/ImsMedia$IMediaListener;->onPlayerStateChanged(III)V

    :cond_e
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x6a
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private doOnVtServiceDisconnected()V
    .locals 1

    .line 662
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsMedia;->cleanup()V

    .line 663
    iget-boolean v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mIsDeInitInProgress:Z

    if-eqz v0, :cond_0

    .line 664
    const-string v0, "doOnVtServiceDisconnected: Service disconnected after deInit - expected"

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 665
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsMedia;->onVtServiceExited()V

    :cond_0
    return-void
.end method

.method private doProcessResponseCallBack(III)V
    .locals 2

    .line 554
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "doProcessResponseCallBack clientHandle : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " request : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    packed-switch p2, :pswitch_data_0

    .line 579
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "processResponseCallBack not able to process request : "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/qualcomm/ims/vt/ImsMedia;->loge(Ljava/lang/String;)V

    return-void

    .line 576
    :pswitch_0
    invoke-direct {p0, p3}, Lcom/qualcomm/ims/vt/ImsMedia;->processSetLocalRenderingParamResponse(I)V

    return-void

    .line 573
    :pswitch_1
    invoke-direct {p0, p3}, Lcom/qualcomm/ims/vt/ImsMedia;->processSetSharedDisplayParamResponse(I)V

    return-void

    .line 570
    :pswitch_2
    invoke-direct {p0, p3}, Lcom/qualcomm/ims/vt/ImsMedia;->processSetVideoImageBuffer(I)V

    return-void

    .line 564
    :pswitch_3
    invoke-direct {p0, p3}, Lcom/qualcomm/ims/vt/ImsMedia;->processInitResponse(I)V

    return-void

    .line 558
    :pswitch_4
    iput p1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mClientHandle:I

    .line 559
    sget-boolean p1, Lcom/qualcomm/ims/vt/ImsMedia;->mInitCalledFlag:Z

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsMedia;->isImsVtRequestAlive()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 560
    iget-object p1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mImsVtRequest:Lcom/qualcomm/ims/vt/IImsMediaRequest;

    iget p0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mClientHandle:I

    invoke-interface {p1, p0}, Lcom/qualcomm/ims/vt/IImsMediaRequest;->init(I)V

    :cond_0
    :pswitch_5
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getImsMediaData(I)Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;
    .locals 2

    .line 1014
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mData:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;

    if-nez v0, :cond_0

    .line 1016
    new-instance v0, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;

    invoke-direct {v0, p0}, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;-><init>(Lcom/qualcomm/ims/vt/ImsMedia;)V

    .line 1017
    iget-object p0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mData:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public static declared-synchronized getInstance()Lcom/qualcomm/ims/vt/ImsMedia;
    .locals 2

    const-class v0, Lcom/qualcomm/ims/vt/ImsMedia;

    monitor-enter v0

    .line 419
    :try_start_0
    sget-object v1, Lcom/qualcomm/ims/vt/ImsMedia;->mInstance:Lcom/qualcomm/ims/vt/ImsMedia;

    if-nez v1, :cond_0

    .line 420
    new-instance v1, Lcom/qualcomm/ims/vt/ImsMedia;

    invoke-direct {v1}, Lcom/qualcomm/ims/vt/ImsMedia;-><init>()V

    sput-object v1, Lcom/qualcomm/ims/vt/ImsMedia;->mInstance:Lcom/qualcomm/ims/vt/ImsMedia;

    .line 422
    :cond_0
    sget-object v1, Lcom/qualcomm/ims/vt/ImsMedia;->mInstance:Lcom/qualcomm/ims/vt/ImsMedia;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static getSurfaceSize(Landroid/view/Surface;)Landroid/util/Size;
    .locals 2

    if-nez p0, :cond_0

    .line 1621
    const-string p0, "surface is null"

    invoke-static {p0}, Lcom/qualcomm/ims/vt/ImsMedia;->logw(Ljava/lang/String;)V

    .line 1622
    new-instance p0, Landroid/util/Size;

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Landroid/util/Size;-><init>(II)V

    return-object p0

    .line 1625
    :cond_0
    invoke-virtual {p0}, Landroid/view/Surface;->getDefaultSize()Landroid/graphics/Point;

    move-result-object p0

    .line 1626
    new-instance v0, Landroid/util/Size;

    iget v1, p0, Landroid/graphics/Point;->x:I

    iget p0, p0, Landroid/graphics/Point;->y:I

    invoke-direct {v0, v1, p0}, Landroid/util/Size;-><init>(II)V

    return-object v0
.end method

.method public static haveSameParent(Landroid/view/Surface;Landroid/view/Surface;)Z
    .locals 0

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-eqz p0, :cond_2

    if-nez p1, :cond_1

    goto :goto_0

    .line 1635
    :cond_1
    invoke-static {p0, p1}, Lcom/qualcomm/ims/vt/ImsMedia;->nativeHaveSameParent(Landroid/view/Surface;Landroid/view/Surface;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private isImsVtRequestAlive()Z
    .locals 0

    .line 493
    iget-object p0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mImsVtRequest:Lcom/qualcomm/ims/vt/IImsMediaRequest;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/qualcomm/ims/vt/IImsMediaRequest;->isAlive()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static isMediaAidlSupported()Z
    .locals 5

    .line 509
    const-string v0, "ro.board.api_level"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 510
    const-string v2, "ro.product.first_api_level"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 511
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "isBoardApiLevelMatched: apiLevel = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " ProdLevel = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    const v3, 0x31708

    if-ge v0, v3, :cond_1

    if-nez v0, :cond_0

    const/16 v0, 0x24

    if-lt v2, v0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public static isSurfaceValid(Landroid/view/Surface;)Z
    .locals 2

    .line 1614
    invoke-static {p0}, Lcom/qualcomm/ims/vt/ImsMedia;->getSurfaceSize(Landroid/view/Surface;)Landroid/util/Size;

    move-result-object p0

    .line 1615
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "surface size : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    if-eqz p0, :cond_0

    .line 1616
    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1

    .line 1644
    const-string v0, "VideoCall_ImsMedia"

    invoke-static {v0, p0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 1

    .line 1648
    const-string v0, "VideoCall_ImsMedia"

    invoke-static {v0, p0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static logw(Ljava/lang/String;)V
    .locals 1

    .line 1652
    const-string v0, "VideoCall_ImsMedia"

    invoke-static {v0, p0}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private static native nativeHaveSameParent(Landroid/view/Surface;Landroid/view/Surface;)Z
.end method

.method private notifyOnMediaDeinitialized()V
    .locals 3

    .line 797
    iget-object p0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mMediaStateListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qualcomm/ims/vt/ImsMedia$MediaStateListener;

    .line 799
    :try_start_0
    invoke-interface {v0}, Lcom/qualcomm/ims/vt/ImsMedia$MediaStateListener;->onMediaDeinitialized()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 801
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "notifyOnMediaDeinitialized: Error="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->loge(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notifyOnMediaInitialized()V
    .locals 3

    .line 807
    iget-object p0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mMediaStateListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qualcomm/ims/vt/ImsMedia$MediaStateListener;

    .line 809
    :try_start_0
    invoke-interface {v0}, Lcom/qualcomm/ims/vt/ImsMedia$MediaStateListener;->onMediaInitialized()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 811
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "notifyOnMediaInitialized: Error="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->loge(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private onCameraConfigChanged(ILcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;I)V
    .locals 11

    .line 1385
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Negotiated Camera values: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mediaId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 1386
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mCameraListener:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/16 v2, 0xa

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/qualcomm/ims/vt/ImsMedia$CameraListener;

    .line 1387
    invoke-static {p2}, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->-$$Nest$mgetWidth(Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;)I

    move-result v5

    .line 1388
    invoke-static {p2}, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->-$$Nest$mgetHeight(Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;)I

    move-result v6

    invoke-static {p2}, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->-$$Nest$mgetFps(Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;)I

    move-result v7

    invoke-static {p2}, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->-$$Nest$mgetRecordingSurface(Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;)Landroid/view/Surface;

    move-result-object v8

    .line 1389
    invoke-static {p2}, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->-$$Nest$mgetOrientationMode(Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;)I

    move-result v9

    move v4, p1

    move v10, p3

    .line 1387
    invoke-interface/range {v3 .. v10}, Lcom/qualcomm/ims/vt/ImsMedia$CameraListener;->onCameraConfigChanged(IIIILandroid/view/Surface;II)V

    .line 1390
    iget p1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mArStatus:I

    if-ne p1, v2, :cond_0

    .line 1391
    invoke-static {p2}, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->-$$Nest$mgetFps(Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;)I

    move-result p1

    invoke-interface {v3, v4, p1, v10}, Lcom/qualcomm/ims/vt/ImsMedia$CameraListener;->onUpdateRecorderFrameRate(III)V

    :cond_0
    move p1, v4

    move p3, v10

    goto :goto_0

    :cond_1
    move v4, p1

    .line 1394
    iget p1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mArStatus:I

    if-ne p1, v2, :cond_2

    .line 1395
    iget-object p0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mMediaListener:Lcom/qualcomm/ims/vt/ImsMedia$IMediaListener;

    if-eqz p0, :cond_2

    .line 1396
    invoke-static {p2}, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->-$$Nest$mgetRecordingSurface(Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;)Landroid/view/Surface;

    move-result-object p1

    .line 1397
    invoke-static {p2}, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->-$$Nest$mgetWidth(Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;)I

    move-result p3

    invoke-static {p2}, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->-$$Nest$mgetHeight(Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;)I

    move-result p2

    .line 1396
    invoke-interface {p0, v4, p1, p3, p2}, Lcom/qualcomm/ims/vt/ImsMedia$IMediaListener;->onRecordingSurfaceChanged(ILandroid/view/Surface;II)V

    :cond_2
    return-void
.end method

.method private onDataUsageEvent(I[J)V
    .locals 2

    .line 1459
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onDataUsageEvent mediaId = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 1460
    invoke-static {}, Lorg/codeaurora/telephony/utils/SomeArgs;->obtain()Lorg/codeaurora/telephony/utils/SomeArgs;

    move-result-object v0

    .line 1461
    iput p1, v0, Lorg/codeaurora/telephony/utils/SomeArgs;->argi1:I

    .line 1462
    iput-object p2, v0, Lorg/codeaurora/telephony/utils/SomeArgs;->arg2:Ljava/lang/Object;

    const/16 p1, 0x69

    .line 1463
    invoke-virtual {p0, p1, v0}, Lcom/qualcomm/ims/vt/ImsMedia;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1464
    invoke-virtual {p0, p1}, Lcom/qualcomm/ims/vt/ImsMedia;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private onDualVtCapabilityChanged(III)V
    .locals 2

    .line 1490
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onDualVtCapabilityChanged mediaId = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 1491
    invoke-static {}, Lorg/codeaurora/telephony/utils/SomeArgs;->obtain()Lorg/codeaurora/telephony/utils/SomeArgs;

    move-result-object v0

    .line 1492
    iput p1, v0, Lorg/codeaurora/telephony/utils/SomeArgs;->argi1:I

    .line 1493
    iput p2, v0, Lorg/codeaurora/telephony/utils/SomeArgs;->argi2:I

    .line 1494
    invoke-direct {p0, p3}, Lcom/qualcomm/ims/vt/ImsMedia;->convertToCapability(I)I

    move-result p1

    iput p1, v0, Lorg/codeaurora/telephony/utils/SomeArgs;->argi3:I

    const/16 p1, 0x6e

    .line 1495
    invoke-virtual {p0, p1, v0}, Lcom/qualcomm/ims/vt/ImsMedia;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1496
    invoke-virtual {p0, p1}, Lcom/qualcomm/ims/vt/ImsMedia;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private onDualVtIncomingCallback(III)V
    .locals 2

    .line 1512
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onDualVtIncomingCallback mediaId = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 1513
    invoke-static {}, Lorg/codeaurora/telephony/utils/SomeArgs;->obtain()Lorg/codeaurora/telephony/utils/SomeArgs;

    move-result-object v0

    .line 1514
    iput p1, v0, Lorg/codeaurora/telephony/utils/SomeArgs;->argi1:I

    .line 1515
    iput p2, v0, Lorg/codeaurora/telephony/utils/SomeArgs;->argi2:I

    .line 1516
    iput p3, v0, Lorg/codeaurora/telephony/utils/SomeArgs;->argi3:I

    const/16 p1, 0x70

    .line 1517
    invoke-virtual {p0, p1, v0}, Lcom/qualcomm/ims/vt/ImsMedia;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1518
    invoke-virtual {p0, p1}, Lcom/qualcomm/ims/vt/ImsMedia;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private onDualVtResponseCallback(IIII)V
    .locals 2

    .line 1501
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onDualVtResponseCallback mediaId = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 1502
    invoke-static {}, Lorg/codeaurora/telephony/utils/SomeArgs;->obtain()Lorg/codeaurora/telephony/utils/SomeArgs;

    move-result-object v0

    .line 1503
    iput p1, v0, Lorg/codeaurora/telephony/utils/SomeArgs;->argi1:I

    .line 1504
    iput p2, v0, Lorg/codeaurora/telephony/utils/SomeArgs;->argi2:I

    .line 1505
    iput p3, v0, Lorg/codeaurora/telephony/utils/SomeArgs;->argi3:I

    .line 1506
    iput p4, v0, Lorg/codeaurora/telephony/utils/SomeArgs;->argi4:I

    const/16 p1, 0x6f

    .line 1507
    invoke-virtual {p0, p1, v0}, Lcom/qualcomm/ims/vt/ImsMedia;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1508
    invoke-virtual {p0, p1}, Lcom/qualcomm/ims/vt/ImsMedia;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private onVtServiceExited()V
    .locals 2

    .line 670
    const-string v0, "onVtServiceExited: daemon has fully exited"

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 671
    iput-boolean v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mIsDeInitInProgress:Z

    .line 672
    iget-boolean v1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mPendingInit:Z

    if-eqz v1, :cond_0

    .line 673
    iput-boolean v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mPendingInit:Z

    .line 674
    const-string v0, "onVtServiceExited: executing deferred init"

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 675
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsMedia;->init()V

    :cond_0
    return-void
.end method

.method private processConferenceStateCompleted(Z)V
    .locals 0

    if-nez p1, :cond_0

    .line 887
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsMedia;->clearMediaEventCache()V

    return-void

    .line 892
    :cond_0
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsMedia;->scheduleCacheMediaEvents()V

    return-void
.end method

.method private processInitResponse(I)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    .line 592
    sput-boolean p0, Lcom/qualcomm/ims/vt/ImsMedia;->mInitCalledFlag:Z

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 587
    sput-boolean p1, Lcom/qualcomm/ims/vt/ImsMedia;->mInitCalledFlag:Z

    .line 588
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsMedia;->notifyOnMediaInitialized()V

    return-void
.end method

.method private processSetLocalRenderingParamResponse(I)V
    .locals 2

    const/16 v0, 0x9

    if-eq p1, v0, :cond_1

    const/16 v1, 0xa

    if-eq p1, v1, :cond_1

    const/16 v1, 0xb

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 702
    :cond_0
    iput v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mArStatus:I

    .line 703
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "processSetLocalRenderingParamResponse: status = "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/qualcomm/ims/vt/ImsMedia;->loge(Ljava/lang/String;)V

    return-void

    .line 700
    :cond_1
    :goto_0
    iput p1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mArStatus:I

    return-void
.end method

.method private processSetSharedDisplayParamResponse(I)V
    .locals 2

    const/4 v0, 0x6

    if-eq p1, v0, :cond_1

    const/4 v1, 0x7

    if-eq p1, v1, :cond_1

    const/16 v1, 0x8

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 692
    :cond_0
    iput v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mScreenShareStatus:I

    .line 693
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "processSetSharedDisplayParamResponse : status = "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/qualcomm/ims/vt/ImsMedia;->loge(Ljava/lang/String;)V

    return-void

    .line 690
    :cond_1
    :goto_0
    iput p1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mScreenShareStatus:I

    return-void
.end method

.method private processSetVideoImageBuffer(I)V
    .locals 2

    .line 680
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "processSetVideoImageBuffer : status = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 681
    iget-object p0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mMediaListener:Lcom/qualcomm/ims/vt/ImsMedia$IMediaListener;

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 682
    :goto_0
    invoke-interface {p0, p1}, Lcom/qualcomm/ims/vt/ImsMedia$IMediaListener;->onSetPreviewImage(Z)V

    :cond_1
    return-void
.end method

.method private scheduleCacheMediaEvents()V
    .locals 4

    const/4 v0, 0x1

    .line 897
    iput-boolean v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mShouldCacheMediaEvents:Z

    const/16 v0, 0x6d

    .line 903
    invoke-virtual {p0, v0}, Lcom/qualcomm/ims/vt/ImsMedia;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 904
    const-string v1, "persist.vendor.radio.schd.cache"

    const/16 v2, 0x8fc

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 905
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "scheduling the cache with delay ="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    int-to-long v1, v1

    .line 906
    invoke-virtual {p0, v0, v1, v2}, Lcom/qualcomm/ims/vt/ImsMedia;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private sendErrorResponse(Landroid/os/Message;I)V
    .locals 1

    const/4 p0, 0x1

    const/4 v0, 0x7

    if-eq p2, p0, :cond_2

    const/4 p0, 0x2

    if-eq p2, p0, :cond_1

    const/4 p0, 0x3

    if-eq p2, p0, :cond_0

    .line 1209
    const-string p0, ""

    goto :goto_0

    :cond_0
    const/16 v0, 0x1c

    .line 1203
    const-string p0, "rejected by remote"

    goto :goto_0

    .line 1207
    :cond_1
    const-string p2, "invalid request"

    move v0, p0

    move-object p0, p2

    goto :goto_0

    .line 1199
    :cond_2
    const-string p0, "request timed out"

    .line 1212
    :goto_0
    new-instance p2, Lorg/codeaurora/ims/ImsRilException;

    invoke-direct {p2, v0, p0}, Lorg/codeaurora/ims/ImsRilException;-><init>(ILjava/lang/String;)V

    if-eqz p1, :cond_3

    const/4 p0, 0x0

    .line 1214
    invoke-static {p1, p0, p2}, Lorg/codeaurora/telephony/utils/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 1215
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_3
    return-void
.end method


# virtual methods
.method public addCameraListener(Lcom/qualcomm/ims/vt/ImsMedia$CameraListener;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1249
    iget-object p0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mCameraListener:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addIfAbsent(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addMediaStateListener(Lcom/qualcomm/ims/vt/ImsMedia$MediaStateListener;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 441
    iget-object p0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mMediaStateListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public answerDualVtRequest(Landroid/os/Message;ZII)V
    .locals 2

    .line 1169
    const-string p3, "answerDualVtRequest"

    invoke-static {p3}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 1170
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsMedia;->isImsVtRequestAlive()Z

    move-result p3

    if-nez p3, :cond_0

    .line 1171
    const-string p0, "ImsVtRequest service is not alive"

    invoke-static {p0}, Lcom/qualcomm/ims/vt/ImsMedia;->loge(Ljava/lang/String;)V

    return-void

    .line 1175
    :cond_0
    iget-object p3, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mDualVtMessages:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p3, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_1

    .line 1177
    iget-object p1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mImsVtRequest:Lcom/qualcomm/ims/vt/IImsMediaRequest;

    iget p0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mClientHandle:I

    const/4 p2, 0x2

    const/4 p3, 0x0

    invoke-interface {p1, p0, p4, p2, p3}, Lcom/qualcomm/ims/vt/IImsMediaRequest;->dualVtAnswer(IIII)V

    return-void

    .line 1180
    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 p2, -0x1

    if-eqz p1, :cond_2

    .line 1181
    iget-object p1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mImsVtRequest:Lcom/qualcomm/ims/vt/IImsMediaRequest;

    iget p0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mClientHandle:I

    invoke-interface {p1, p0, p4, p2, v0}, Lcom/qualcomm/ims/vt/IImsMediaRequest;->dualVtAnswer(IIII)V

    return-void

    .line 1184
    :cond_2
    const-string p1, "answerDualVtRequest rejected by telephony"

    invoke-static {p1}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 1185
    iget-object p1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mImsVtRequest:Lcom/qualcomm/ims/vt/IImsMediaRequest;

    iget p0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mClientHandle:I

    const/4 p3, 0x4

    invoke-interface {p1, p0, p4, p2, p3}, Lcom/qualcomm/ims/vt/IImsMediaRequest;->dualVtAnswer(IIII)V

    return-void
.end method

.method clearMediaData()V
    .locals 3

    .line 620
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mData:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;

    const/4 v2, 0x0

    .line 621
    invoke-static {v1, v2}, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->-$$Nest$msetSurface(Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;Landroid/view/Surface;)V

    const/4 v2, -0x1

    .line 622
    invoke-static {v1, v2, v2}, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->-$$Nest$msetDownscaledDimensions(Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;II)V

    goto :goto_0

    .line 625
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mData:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 626
    iget-object p0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mDualVtMessages:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    return-void
.end method

.method deInit()V
    .locals 2

    .line 605
    const-string v0, "deInit called"

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 606
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsMedia;->clearMediaData()V

    const/4 v0, 0x0

    .line 607
    iput-boolean v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mPendingInit:Z

    const/4 v1, 0x1

    .line 608
    iput-boolean v1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mIsDeInitInProgress:Z

    .line 610
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsMedia;->isImsVtRequestAlive()Z

    move-result v1

    if-nez v1, :cond_0

    .line 611
    const-string v1, "ImsVtRequest service is not alive"

    invoke-static {v1}, Lcom/qualcomm/ims/vt/ImsMedia;->loge(Ljava/lang/String;)V

    .line 612
    iput-boolean v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mIsDeInitInProgress:Z

    return-void

    .line 616
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mImsVtRequest:Lcom/qualcomm/ims/vt/IImsMediaRequest;

    iget p0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mClientHandle:I

    invoke-interface {v0, p0}, Lcom/qualcomm/ims/vt/IImsMediaRequest;->deInit(I)V

    return-void
.end method

.method public dispose()V
    .locals 0

    const/4 p0, 0x0

    .line 598
    sput-object p0, Lcom/qualcomm/ims/vt/ImsMedia;->mInstance:Lcom/qualcomm/ims/vt/ImsMedia;

    return-void
.end method

.method public dualVtRequest(Landroid/os/Message;II)V
    .locals 2

    .line 1150
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "dualVtRequest callType: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 1151
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsMedia;->isImsVtRequestAlive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1152
    const-string p0, "ImsVtRequest service is not alive"

    invoke-static {p0}, Lcom/qualcomm/ims/vt/ImsMedia;->loge(Ljava/lang/String;)V

    return-void

    .line 1156
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mDualVtMessages:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1160
    iget-object p1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mImsVtRequest:Lcom/qualcomm/ims/vt/IImsMediaRequest;

    const/16 v0, 0x1d

    if-ne p2, v0, :cond_1

    .line 1158
    iget p0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mClientHandle:I

    const/4 p2, 0x2

    invoke-interface {p1, p0, p3, p2}, Lcom/qualcomm/ims/vt/IImsMediaRequest;->dualVtRequest(III)V

    return-void

    .line 1160
    :cond_1
    iget p0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mClientHandle:I

    const/4 p2, -0x1

    invoke-interface {p1, p0, p3, p2}, Lcom/qualcomm/ims/vt/IImsMediaRequest;->dualVtRequest(III)V

    return-void
.end method

.method public enableArMode(ZI)V
    .locals 2

    .line 964
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "enableArMode enableAr = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 965
    invoke-direct {p0, p2}, Lcom/qualcomm/ims/vt/ImsMedia;->getImsMediaData(I)Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;

    move-result-object p2

    if-eqz p1, :cond_1

    const/16 p1, 0xb

    .line 967
    iput p1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mArStatus:I

    .line 968
    iget-boolean p0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mIsParamReady:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    .line 969
    invoke-static {p2, p0}, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->-$$Nest$msetLocalRenderingParams(Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;Z)V

    :cond_0
    return-void

    :cond_1
    const/4 p0, 0x0

    .line 972
    invoke-static {p2, p0}, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->-$$Nest$msetLocalRenderingParams(Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;Z)V

    return-void
.end method

.method public getDownscaledHeight(I)I
    .locals 0

    .line 1121
    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/ImsMedia;->getImsMediaData(I)Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;

    move-result-object p0

    .line 1122
    invoke-static {p0}, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->-$$Nest$mgetDownscaledHeight(Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;)I

    move-result p0

    return p0
.end method

.method public getDownscaledWidth(I)I
    .locals 0

    .line 1113
    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/ImsMedia;->getImsMediaData(I)Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;

    move-result-object p0

    .line 1114
    invoke-static {p0}, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->-$$Nest$mgetDownscaledWidth(Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;)I

    move-result p0

    return p0
.end method

.method public getNegotiatedFps(I)I
    .locals 0

    .line 1073
    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/ImsMedia;->getImsMediaData(I)Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;

    move-result-object p0

    .line 1074
    invoke-static {p0}, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->-$$Nest$mgetFps(Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;)I

    move-result p0

    return p0
.end method

.method public getNegotiatedHeight(I)I
    .locals 0

    .line 1060
    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/ImsMedia;->getImsMediaData(I)Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;

    move-result-object p0

    .line 1061
    invoke-static {p0}, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->-$$Nest$mgetHeight(Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;)I

    move-result p0

    return p0
.end method

.method public getNegotiatedWidth(I)I
    .locals 0

    .line 1068
    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/ImsMedia;->getImsMediaData(I)Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;

    move-result-object p0

    .line 1069
    invoke-static {p0}, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->-$$Nest$mgetWidth(Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;)I

    move-result p0

    return p0
.end method

.method public getPeerHeight(I)I
    .locals 0

    .line 1097
    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/ImsMedia;->getImsMediaData(I)Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;

    move-result-object p0

    .line 1098
    invoke-static {p0}, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->-$$Nest$mgetPeerHeight(Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;)I

    move-result p0

    return p0
.end method

.method public getPeerWidth(I)I
    .locals 0

    .line 1105
    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/ImsMedia;->getImsMediaData(I)Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;

    move-result-object p0

    .line 1106
    invoke-static {p0}, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->-$$Nest$mgetPeerWidth(Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;)I

    move-result p0

    return p0
.end method

.method public getRecordingSurface(I)Landroid/view/Surface;
    .locals 0

    .line 1081
    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/ImsMedia;->getImsMediaData(I)Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;

    move-result-object p0

    .line 1082
    invoke-static {p0}, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->-$$Nest$mgetRecordingSurface(Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;)Landroid/view/Surface;

    move-result-object p0

    return-object p0
.end method

.method public getUIOrientationMode(I)I
    .locals 0

    .line 1089
    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/ImsMedia;->getImsMediaData(I)Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;

    move-result-object p0

    .line 1090
    invoke-static {p0}, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->-$$Nest$mgetOrientationMode(Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;)I

    move-result p0

    return p0
.end method

.method public getVideoQualityLevel(I)I
    .locals 0

    .line 1129
    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/ImsMedia;->getImsMediaData(I)Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;

    move-result-object p0

    .line 1130
    invoke-static {p0}, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->-$$Nest$mgetVideoQualityLevel(Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;)I

    move-result p0

    return p0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 1522
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x64

    if-eq v0, v1, :cond_7

    const/16 v1, 0x69

    if-eq v0, v1, :cond_5

    packed-switch v0, :pswitch_data_0

    .line 1609
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Received unknown msg id = "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/qualcomm/ims/vt/ImsMedia;->loge(Ljava/lang/String;)V

    return-void

    .line 1606
    :pswitch_0
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsMedia;->doOnVtServiceDisconnected()V

    return-void

    .line 1598
    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lorg/codeaurora/telephony/utils/SomeArgs;

    .line 1600
    :try_start_0
    iget v0, p1, Lorg/codeaurora/telephony/utils/SomeArgs;->argi1:I

    iget v1, p1, Lorg/codeaurora/telephony/utils/SomeArgs;->argi2:I

    iget v2, p1, Lorg/codeaurora/telephony/utils/SomeArgs;->argi3:I

    invoke-direct {p0, v0, v1, v2}, Lcom/qualcomm/ims/vt/ImsMedia;->doProcessResponseCallBack(III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1602
    invoke-virtual {p1}, Lorg/codeaurora/telephony/utils/SomeArgs;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Lorg/codeaurora/telephony/utils/SomeArgs;->recycle()V

    .line 1603
    throw p0

    .line 1585
    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lorg/codeaurora/telephony/utils/SomeArgs;

    .line 1587
    :try_start_1
    iget v0, p1, Lorg/codeaurora/telephony/utils/SomeArgs;->argi1:I

    .line 1588
    iget v1, p1, Lorg/codeaurora/telephony/utils/SomeArgs;->argi2:I

    .line 1589
    iget v2, p1, Lorg/codeaurora/telephony/utils/SomeArgs;->argi3:I

    .line 1590
    iget-object p0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mMediaListener:Lcom/qualcomm/ims/vt/ImsMedia$IMediaListener;

    if-eqz p0, :cond_0

    .line 1591
    invoke-interface {p0, v0, v1, v2}, Lcom/qualcomm/ims/vt/ImsMedia$IMediaListener;->onIncomingDualVtRequest(III)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1594
    :cond_0
    invoke-virtual {p1}, Lorg/codeaurora/telephony/utils/SomeArgs;->recycle()V

    return-void

    :catchall_1
    move-exception p0

    invoke-virtual {p1}, Lorg/codeaurora/telephony/utils/SomeArgs;->recycle()V

    .line 1595
    throw p0

    .line 1561
    :pswitch_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lorg/codeaurora/telephony/utils/SomeArgs;

    .line 1563
    :try_start_2
    iget v0, p1, Lorg/codeaurora/telephony/utils/SomeArgs;->argi1:I

    .line 1564
    iget v0, p1, Lorg/codeaurora/telephony/utils/SomeArgs;->argi2:I

    .line 1565
    iget v1, p1, Lorg/codeaurora/telephony/utils/SomeArgs;->argi3:I

    .line 1566
    iget v1, p1, Lorg/codeaurora/telephony/utils/SomeArgs;->argi4:I

    .line 1567
    iget-object v2, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mDualVtMessages:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Message;

    if-eqz v2, :cond_2

    if-nez v0, :cond_1

    .line 1571
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v2, v0, v3}, Lorg/codeaurora/telephony/utils/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 1572
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 1574
    :cond_1
    invoke-direct {p0, v2, v0}, Lcom/qualcomm/ims/vt/ImsMedia;->sendErrorResponse(Landroid/os/Message;I)V

    .line 1576
    :goto_0
    iget-object p0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mDualVtMessages:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1578
    :cond_2
    const-string p0, "received response for null message, not expected"

    invoke-static {p0}, Lcom/qualcomm/ims/vt/ImsMedia;->loge(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1581
    :goto_1
    invoke-virtual {p1}, Lorg/codeaurora/telephony/utils/SomeArgs;->recycle()V

    return-void

    :catchall_2
    move-exception p0

    invoke-virtual {p1}, Lorg/codeaurora/telephony/utils/SomeArgs;->recycle()V

    .line 1582
    throw p0

    .line 1548
    :pswitch_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lorg/codeaurora/telephony/utils/SomeArgs;

    .line 1550
    :try_start_3
    iget v0, p1, Lorg/codeaurora/telephony/utils/SomeArgs;->argi1:I

    .line 1551
    iget v1, p1, Lorg/codeaurora/telephony/utils/SomeArgs;->argi2:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    .line 1552
    :goto_2
    iget v1, p1, Lorg/codeaurora/telephony/utils/SomeArgs;->argi3:I

    .line 1553
    iget-object p0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mMediaListener:Lcom/qualcomm/ims/vt/ImsMedia$IMediaListener;

    if-eqz p0, :cond_4

    .line 1554
    invoke-interface {p0, v0, v2, v1}, Lcom/qualcomm/ims/vt/ImsMedia$IMediaListener;->onDualVtSupportChanged(IZI)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 1557
    :cond_4
    invoke-virtual {p1}, Lorg/codeaurora/telephony/utils/SomeArgs;->recycle()V

    return-void

    :catchall_3
    move-exception p0

    invoke-virtual {p1}, Lorg/codeaurora/telephony/utils/SomeArgs;->recycle()V

    .line 1558
    throw p0

    .line 1545
    :pswitch_5
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsMedia;->doOnCachedMediaEvent()V

    return-void

    .line 1532
    :cond_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lorg/codeaurora/telephony/utils/SomeArgs;

    .line 1534
    :try_start_4
    iget v0, p1, Lorg/codeaurora/telephony/utils/SomeArgs;->argi1:I

    .line 1535
    iget-object v1, p1, Lorg/codeaurora/telephony/utils/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, [J

    .line 1536
    iget-object p0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mMediaListener:Lcom/qualcomm/ims/vt/ImsMedia$IMediaListener;

    if-eqz p0, :cond_6

    .line 1537
    new-instance v2, Lorg/codeaurora/ims/QtiVideoCallDataUsage;

    invoke-direct {v2, v1}, Lorg/codeaurora/ims/QtiVideoCallDataUsage;-><init>([J)V

    invoke-interface {p0, v0, v2}, Lcom/qualcomm/ims/vt/ImsMedia$IMediaListener;->onDataUsageChanged(ILorg/codeaurora/ims/QtiVideoCallDataUsage;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 1541
    :cond_6
    invoke-virtual {p1}, Lorg/codeaurora/telephony/utils/SomeArgs;->recycle()V

    return-void

    :catchall_4
    move-exception p0

    invoke-virtual {p1}, Lorg/codeaurora/telephony/utils/SomeArgs;->recycle()V

    .line 1542
    throw p0

    .line 1524
    :cond_7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lorg/codeaurora/telephony/utils/SomeArgs;

    .line 1526
    :try_start_5
    iget v0, p1, Lorg/codeaurora/telephony/utils/SomeArgs;->argi1:I

    iget v1, p1, Lorg/codeaurora/telephony/utils/SomeArgs;->argi2:I

    iget v2, p1, Lorg/codeaurora/telephony/utils/SomeArgs;->argi3:I

    invoke-direct {p0, v0, v1, v2}, Lcom/qualcomm/ims/vt/ImsMedia;->doOnMediaEvent(III)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 1528
    invoke-virtual {p1}, Lorg/codeaurora/telephony/utils/SomeArgs;->recycle()V

    return-void

    :catchall_5
    move-exception p0

    invoke-virtual {p1}, Lorg/codeaurora/telephony/utils/SomeArgs;->recycle()V

    .line 1529
    throw p0

    :pswitch_data_0
    .packed-switch 0x6d
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method init()V
    .locals 3

    .line 521
    iget-boolean v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mIsDeInitInProgress:Z

    if-eqz v0, :cond_0

    .line 522
    const-string v0, "init: deInit in progress, deferring init until daemon has fully died"

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 523
    iput-boolean v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mPendingInit:Z

    return-void

    .line 527
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mImsVtRequest:Lcom/qualcomm/ims/vt/IImsMediaRequest;

    if-nez v0, :cond_2

    .line 528
    invoke-static {}, Lcom/qualcomm/ims/vt/ImsMedia;->isMediaAidlSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 529
    new-instance v0, Lcom/qualcomm/ims/vt/ImsVtRequestAidl;

    invoke-direct {v0, p0}, Lcom/qualcomm/ims/vt/ImsVtRequestAidl;-><init>(Lcom/qualcomm/ims/vt/ImsMedia;)V

    goto :goto_0

    .line 530
    :cond_1
    new-instance v0, Lcom/qualcomm/ims/vt/ImsVtRequestJni;

    invoke-direct {v0, p0}, Lcom/qualcomm/ims/vt/ImsVtRequestJni;-><init>(Lcom/qualcomm/ims/vt/ImsMedia;)V

    :goto_0
    iput-object v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mImsVtRequest:Lcom/qualcomm/ims/vt/IImsMediaRequest;

    .line 532
    :cond_2
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mImsVtRequest:Lcom/qualcomm/ims/vt/IImsMediaRequest;

    invoke-interface {v0}, Lcom/qualcomm/ims/vt/IImsMediaRequest;->isAlive()Z

    move-result v0

    if-nez v0, :cond_3

    .line 533
    const-string v0, "init: Failed to initialize ImsVtRequest service"

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->loge(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-void

    :catch_0
    move-exception v0

    .line 536
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "init: Exception initializing ImsVtRequest: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->loge(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 537
    iput-object v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mImsVtRequest:Lcom/qualcomm/ims/vt/IImsMediaRequest;

    return-void
.end method

.method public isArEnabled()Z
    .locals 1

    .line 994
    iget p0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mArStatus:I

    const/16 v0, 0xa

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method isMediaInitialized()Z
    .locals 1

    .line 1640
    sget-boolean v0, Lcom/qualcomm/ims/vt/ImsMedia;->mInitCalledFlag:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mIsDeInitInProgress:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onAbortConferenceCompleted(Z)V
    .locals 0

    .line 881
    const-string p0, "onAbortConferenceCompleted : no-op"

    invoke-static {p0}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    return-void
.end method

.method public onConferenceParticipantStateChanged(Z)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 874
    :cond_0
    monitor-enter p0

    .line 875
    :try_start_0
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsMedia;->scheduleCacheMediaEvents()V

    .line 876
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onConferenceStateChanged(Lorg/codeaurora/ims/ImsConferenceController$ConferenceState;Z)V
    .locals 2

    const-string v0, "onConferenceStateChanged ConferenceState: "

    .line 851
    monitor-enter p0

    .line 852
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " isSuccess: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 855
    sget-object v0, Lcom/qualcomm/ims/vt/ImsMedia$1;->$SwitchMap$org$codeaurora$ims$ImsConferenceController$ConferenceState:[I

    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsConferenceController$ConferenceState;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 863
    monitor-exit p0

    return-void

    .line 860
    :cond_0
    invoke-direct {p0, p2}, Lcom/qualcomm/ims/vt/ImsMedia;->processConferenceStateCompleted(Z)V

    .line 861
    monitor-exit p0

    return-void

    .line 857
    :cond_1
    iput-boolean v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mShouldCacheMediaEvents:Z

    .line 858
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 865
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onDualVtEvent(IILcom/qualcomm/ims/vt/ImsMedia$DualVtCallbackInfo;)V
    .locals 2

    .line 1437
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onDualVtEvent eventId= "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mediaId= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "DualVtCallBackInfo= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    return-void

    .line 1448
    :cond_0
    iget p1, p3, Lcom/qualcomm/ims/vt/ImsMedia$DualVtCallbackInfo;->mStatus:I

    iget p3, p3, Lcom/qualcomm/ims/vt/ImsMedia$DualVtCallbackInfo;->mDirection:I

    invoke-direct {p0, p2, p1, p3}, Lcom/qualcomm/ims/vt/ImsMedia;->onDualVtIncomingCallback(III)V

    return-void

    .line 1445
    :cond_1
    iget v0, p3, Lcom/qualcomm/ims/vt/ImsMedia$DualVtCallbackInfo;->mStatus:I

    iget p3, p3, Lcom/qualcomm/ims/vt/ImsMedia$DualVtCallbackInfo;->mDirection:I

    invoke-direct {p0, p2, v0, p3, p1}, Lcom/qualcomm/ims/vt/ImsMedia;->onDualVtResponseCallback(IIII)V

    return-void

    .line 1441
    :cond_2
    iget p1, p3, Lcom/qualcomm/ims/vt/ImsMedia$DualVtCallbackInfo;->mCapability:I

    iget p3, p3, Lcom/qualcomm/ims/vt/ImsMedia$DualVtCallbackInfo;->mDirection:I

    invoke-direct {p0, p2, p1, p3}, Lcom/qualcomm/ims/vt/ImsMedia;->onDualVtCapabilityChanged(III)V

    return-void
.end method

.method public onMediaEvent(III)V
    .locals 3

    const-string v0, "Exception in onMediaEvent: "

    .line 1406
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onMediaEvent eventId = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mShouldCacheMediaEvents: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mShouldCacheMediaEvents:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mediaId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " stream: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 1408
    monitor-enter p0

    .line 1410
    :try_start_0
    iget-boolean v1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mShouldCacheMediaEvents:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    .line 1414
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mCachedMediaEvents:Ljava/util/List;

    new-instance v1, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaEvent;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaEvent;-><init>(Lcom/qualcomm/ims/vt/ImsMedia;III)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1416
    :cond_0
    invoke-static {}, Lorg/codeaurora/telephony/utils/SomeArgs;->obtain()Lorg/codeaurora/telephony/utils/SomeArgs;

    move-result-object v1

    .line 1418
    iput p1, v1, Lorg/codeaurora/telephony/utils/SomeArgs;->argi1:I

    .line 1419
    iput p2, v1, Lorg/codeaurora/telephony/utils/SomeArgs;->argi2:I

    .line 1420
    iput p3, v1, Lorg/codeaurora/telephony/utils/SomeArgs;->argi3:I

    const/16 p1, 0x64

    .line 1421
    invoke-virtual {p0, p1, v1}, Lcom/qualcomm/ims/vt/ImsMedia;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1423
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/qualcomm/ims/vt/ImsMedia;->sendMessage(Landroid/os/Message;)Z

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p1, :cond_1

    .line 1428
    :try_start_2
    const-string p1, "Message send failed"

    :goto_0
    invoke-static {p1}, Lcom/qualcomm/ims/vt/ImsMedia;->loge(Ljava/lang/String;)V

    .line 1429
    invoke-virtual {v1}, Lorg/codeaurora/telephony/utils/SomeArgs;->recycle()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 1425
    :try_start_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qualcomm/ims/vt/ImsMedia;->loge(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1428
    :try_start_4
    const-string p1, "Message send failed"

    goto :goto_0

    .line 1433
    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    .line 1428
    :goto_2
    const-string p2, "Message send failed"

    invoke-static {p2}, Lcom/qualcomm/ims/vt/ImsMedia;->loge(Ljava/lang/String;)V

    .line 1429
    invoke-virtual {v1}, Lorg/codeaurora/telephony/utils/SomeArgs;->recycle()V

    .line 1431
    throw p1

    :catchall_1
    move-exception p1

    .line 1433
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1
.end method

.method onVtServiceDisconnected()V
    .locals 1

    const/16 v0, 0x72

    .line 652
    invoke-virtual {p0, v0}, Lcom/qualcomm/ims/vt/ImsMedia;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qualcomm/ims/vt/ImsMedia;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public processCameraFrameRate(III)V
    .locals 0

    .line 731
    iput p2, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mRecorderFrameRate:I

    const/16 p2, 0x6a

    .line 732
    invoke-virtual {p0, p2, p1, p3}, Lcom/qualcomm/ims/vt/ImsMedia;->onMediaEvent(III)V

    return-void
.end method

.method public processCommonMediaEvents(III)V
    .locals 0

    .line 708
    invoke-virtual {p0, p2, p1, p3}, Lcom/qualcomm/ims/vt/ImsMedia;->onMediaEvent(III)V

    return-void
.end method

.method public processDataUsage(I[J)V
    .locals 1

    if-eqz p2, :cond_1

    .line 755
    array-length v0, p2

    if-nez v0, :cond_0

    goto :goto_0

    .line 759
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/qualcomm/ims/vt/ImsMedia;->onDataUsageEvent(I[J)V

    return-void

    .line 756
    :cond_1
    :goto_0
    const-string p0, "processDataUsage: received null or empty data usage"

    invoke-static {p0}, Lcom/qualcomm/ims/vt/ImsMedia;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public processDisplayMode(III)V
    .locals 1

    .line 719
    invoke-direct {p0, p3}, Lcom/qualcomm/ims/vt/ImsMedia;->getImsMediaData(I)Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;

    move-result-object v0

    .line 720
    invoke-static {v0, p2}, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->-$$Nest$msetOrientationMode(Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;I)V

    const/16 p2, 0x66

    .line 721
    invoke-virtual {p0, p2, p1, p3}, Lcom/qualcomm/ims/vt/ImsMedia;->onMediaEvent(III)V

    return-void
.end method

.method public processDownscale(IIII)V
    .locals 1

    .line 763
    invoke-direct {p0, p4}, Lcom/qualcomm/ims/vt/ImsMedia;->getImsMediaData(I)Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;

    move-result-object v0

    .line 764
    invoke-static {v0, p3, p2}, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->-$$Nest$msetDownscaledDimensions(Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;II)V

    const/16 p2, 0x6c

    .line 765
    invoke-virtual {p0, p2, p1, p4}, Lcom/qualcomm/ims/vt/ImsMedia;->onMediaEvent(III)V

    return-void
.end method

.method public processDualVtAnswerRespCb(III)V
    .locals 2

    .line 775
    new-instance v0, Lcom/qualcomm/ims/vt/ImsMedia$DualVtCallbackInfo;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p3, p2}, Lcom/qualcomm/ims/vt/ImsMedia$DualVtCallbackInfo;-><init>(III)V

    const/4 p2, 0x3

    .line 777
    invoke-virtual {p0, p2, p1, v0}, Lcom/qualcomm/ims/vt/ImsMedia;->onDualVtEvent(IILcom/qualcomm/ims/vt/ImsMedia$DualVtCallbackInfo;)V

    return-void
.end method

.method public processDualVtCapabilityCb(III)V
    .locals 2

    .line 781
    new-instance v0, Lcom/qualcomm/ims/vt/ImsMedia$DualVtCallbackInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p3, v1, p2}, Lcom/qualcomm/ims/vt/ImsMedia$DualVtCallbackInfo;-><init>(III)V

    .line 783
    invoke-virtual {p0, v1, p1, v0}, Lcom/qualcomm/ims/vt/ImsMedia;->onDualVtEvent(IILcom/qualcomm/ims/vt/ImsMedia$DualVtCallbackInfo;)V

    return-void
.end method

.method public processDualVtIncomingCb(II)V
    .locals 3

    .line 787
    new-instance v0, Lcom/qualcomm/ims/vt/ImsMedia$DualVtCallbackInfo;

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eq p2, v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    move v1, v2

    .line 791
    :goto_0
    invoke-direct {v0, v2, v1, p2}, Lcom/qualcomm/ims/vt/ImsMedia$DualVtCallbackInfo;-><init>(III)V

    const/4 p2, 0x2

    .line 793
    invoke-virtual {p0, p2, p1, v0}, Lcom/qualcomm/ims/vt/ImsMedia;->onDualVtEvent(IILcom/qualcomm/ims/vt/ImsMedia$DualVtCallbackInfo;)V

    return-void
.end method

.method public processDualVtRequestRespCb(III)V
    .locals 2

    .line 769
    new-instance v0, Lcom/qualcomm/ims/vt/ImsMedia$DualVtCallbackInfo;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p3, p2}, Lcom/qualcomm/ims/vt/ImsMedia$DualVtCallbackInfo;-><init>(III)V

    .line 771
    invoke-virtual {p0, v1, p1, v0}, Lcom/qualcomm/ims/vt/ImsMedia;->onDualVtEvent(IILcom/qualcomm/ims/vt/ImsMedia$DualVtCallbackInfo;)V

    return-void
.end method

.method public processParamReady(ILandroid/view/Surface;IIIILjava/lang/String;I)V
    .locals 6

    .line 744
    invoke-direct {p0, p8}, Lcom/qualcomm/ims/vt/ImsMedia;->getImsMediaData(I)Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;

    move-result-object v0

    move-object v4, p2

    move v1, p3

    move v2, p4

    move v3, p5

    move v5, p6

    .line 745
    invoke-static/range {v0 .. v5}, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->-$$Nest$mmaybeUpdatePreviewParams(Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;IIILandroid/view/Surface;I)Z

    move-result p2

    if-nez p2, :cond_0

    if-eqz p7, :cond_1

    iget-object p2, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mCodec:Ljava/lang/String;

    .line 747
    invoke-virtual {p7, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 748
    :cond_0
    iput-object p7, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mCodec:Ljava/lang/String;

    const/4 p2, 0x1

    .line 749
    iput-boolean p2, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mUpdateCameraParams:Z

    :cond_1
    const/16 p2, 0x65

    .line 751
    invoke-virtual {p0, p2, p1, p8}, Lcom/qualcomm/ims/vt/ImsMedia;->onMediaEvent(III)V

    return-void
.end method

.method public processPeerResolutionChange(IIII)V
    .locals 1

    .line 713
    invoke-direct {p0, p4}, Lcom/qualcomm/ims/vt/ImsMedia;->getImsMediaData(I)Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;

    move-result-object v0

    .line 714
    invoke-static {v0, p3, p2}, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->-$$Nest$msetPeerDimensions(Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;II)V

    const/16 p2, 0x67

    .line 715
    invoke-virtual {p0, p2, p1, p4}, Lcom/qualcomm/ims/vt/ImsMedia;->onMediaEvent(III)V

    return-void
.end method

.method public processRecordingSurface(ILandroid/view/Surface;I)V
    .locals 1

    .line 736
    invoke-direct {p0, p3}, Lcom/qualcomm/ims/vt/ImsMedia;->getImsMediaData(I)Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;

    move-result-object v0

    .line 737
    invoke-static {v0, p2}, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->-$$Nest$msetRecordingSurface(Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;Landroid/view/Surface;)V

    const/16 p2, 0x6b

    .line 738
    invoke-virtual {p0, p2, p1, p3}, Lcom/qualcomm/ims/vt/ImsMedia;->onMediaEvent(III)V

    return-void
.end method

.method public processResponseCallBack(III)V
    .locals 1

    .line 545
    invoke-static {}, Lorg/codeaurora/telephony/utils/SomeArgs;->obtain()Lorg/codeaurora/telephony/utils/SomeArgs;

    move-result-object v0

    .line 546
    iput p1, v0, Lorg/codeaurora/telephony/utils/SomeArgs;->argi1:I

    .line 547
    iput p2, v0, Lorg/codeaurora/telephony/utils/SomeArgs;->argi2:I

    .line 548
    iput p3, v0, Lorg/codeaurora/telephony/utils/SomeArgs;->argi3:I

    const/16 p1, 0x71

    .line 549
    invoke-virtual {p0, p1, v0}, Lcom/qualcomm/ims/vt/ImsMedia;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 550
    invoke-virtual {p0, p1}, Lcom/qualcomm/ims/vt/ImsMedia;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public processVideoQuality(III)V
    .locals 1

    .line 725
    invoke-direct {p0, p3}, Lcom/qualcomm/ims/vt/ImsMedia;->getImsMediaData(I)Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;

    move-result-object v0

    .line 726
    invoke-static {v0, p2}, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->-$$Nest$msetVideoQualityLevel(Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;I)V

    const/16 p2, 0x68

    .line 727
    invoke-virtual {p0, p2, p1, p3}, Lcom/qualcomm/ims/vt/ImsMedia;->onMediaEvent(III)V

    return-void
.end method

.method public removeCameraListener(Lcom/qualcomm/ims/vt/ImsMedia$CameraListener;)V
    .locals 0

    .line 1254
    iget-object p0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mCameraListener:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeMediaStateListener(Lcom/qualcomm/ims/vt/ImsMedia$MediaStateListener;)V
    .locals 0

    .line 449
    iget-object p0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mMediaStateListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public requestCallDataUsage(II)V
    .locals 0

    .line 1137
    const-string p2, "requestCallDataUsage"

    invoke-static {p2}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 1138
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsMedia;->isImsVtRequestAlive()Z

    move-result p2

    if-nez p2, :cond_0

    .line 1139
    const-string p0, "ImsVtRequest service is not alive"

    invoke-static {p0}, Lcom/qualcomm/ims/vt/ImsMedia;->loge(Ljava/lang/String;)V

    return-void

    .line 1143
    :cond_0
    iget-object p2, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mImsVtRequest:Lcom/qualcomm/ims/vt/IImsMediaRequest;

    iget p0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mClientHandle:I

    invoke-interface {p2, p0, p1}, Lcom/qualcomm/ims/vt/IImsMediaRequest;->requestRtpDataUsage(II)V

    return-void
.end method

.method public sendCvoInfo(I)V
    .locals 2

    .line 817
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sendCvoInfo orientation="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 818
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsMedia;->isImsVtRequestAlive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 819
    const-string p0, "ImsVtRequest service is not alive"

    invoke-static {p0}, Lcom/qualcomm/ims/vt/ImsMedia;->loge(Ljava/lang/String;)V

    return-void

    .line 823
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mImsVtRequest:Lcom/qualcomm/ims/vt/IImsMediaRequest;

    iget p0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mClientHandle:I

    invoke-interface {v0, p0, p1}, Lcom/qualcomm/ims/vt/IImsMediaRequest;->setDeviceOrientation(II)V

    return-void
.end method

.method public setCameraInfo(III)V
    .locals 2

    .line 1001
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setCameraInfo facing="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " stream= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 1003
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsMedia;->isImsVtRequestAlive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1004
    const-string p0, "ImsVtRequest service is not alive"

    invoke-static {p0}, Lcom/qualcomm/ims/vt/ImsMedia;->loge(Ljava/lang/String;)V

    return-void

    .line 1008
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mImsVtRequest:Lcom/qualcomm/ims/vt/IImsMediaRequest;

    iget p0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mClientHandle:I

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/qualcomm/ims/vt/IImsMediaRequest;->setCameraInfo(IIII)V

    return-void
.end method

.method public setLocalRenderingDelay(I)V
    .locals 2

    .line 981
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setLocalRenderingDelay="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 982
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsMedia;->isImsVtRequestAlive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 983
    const-string p0, "ImsVtRequest service is not alive"

    invoke-static {p0}, Lcom/qualcomm/ims/vt/ImsMedia;->loge(Ljava/lang/String;)V

    return-void

    .line 987
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mImsVtRequest:Lcom/qualcomm/ims/vt/IImsMediaRequest;

    iget p0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mClientHandle:I

    invoke-interface {v0, p0, p1}, Lcom/qualcomm/ims/vt/IImsMediaRequest;->setLocalRenderingDelay(II)V

    return-void
.end method

.method public setMediaListener(Lcom/qualcomm/ims/vt/ImsMedia$IMediaListener;)V
    .locals 1

    .line 1243
    const-string v0, "Registering for Media Listener"

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 1244
    iput-object p1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mMediaListener:Lcom/qualcomm/ims/vt/ImsMedia$IMediaListener;

    return-void
.end method

.method public setPreviewImage(Landroid/graphics/Bitmap;)V
    .locals 10

    .line 1221
    sget-boolean v0, Lcom/qualcomm/ims/vt/ImsMedia;->mInitCalledFlag:Z

    if-nez v0, :cond_0

    .line 1222
    const-string p0, "setPreviewImage: VT service deinitialized so ignore"

    invoke-static {p0}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    return-void

    .line 1226
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setPreviewImage: bitmap = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    if-nez p1, :cond_1

    .line 1229
    iget-object p1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mImsVtRequest:Lcom/qualcomm/ims/vt/IImsMediaRequest;

    iget p0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mClientHandle:I

    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-interface {p1, p0, v0, v1, v1}, Lcom/qualcomm/ims/vt/IImsMediaRequest;->setVideoImageBuffer(I[III)V

    return-void

    .line 1231
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 1232
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 1233
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setPreviewImage: bitmap width = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " height = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    mul-int v0, v5, v9

    .line 1235
    new-array v3, v0, [I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    move v8, v5

    move-object v2, p1

    .line 1237
    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 1238
    iget-object p1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mImsVtRequest:Lcom/qualcomm/ims/vt/IImsMediaRequest;

    iget p0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mClientHandle:I

    invoke-interface {p1, p0, v3, v5, v9}, Lcom/qualcomm/ims/vt/IImsMediaRequest;->setVideoImageBuffer(I[III)V

    return-void
.end method

.method public setSharedDisplayParams(III)V
    .locals 2

    .line 931
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setSharedDisplayParams width="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 933
    invoke-direct {p0, p3}, Lcom/qualcomm/ims/vt/ImsMedia;->getImsMediaData(I)Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;

    move-result-object p3

    .line 934
    invoke-static {p3, p1, p2}, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->-$$Nest$msetSharedDisplayDimensions(Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;II)V

    const/16 p1, 0x8

    .line 935
    iput p1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mScreenShareStatus:I

    .line 937
    iget-boolean p1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mIsParamReady:Z

    if-eqz p1, :cond_0

    .line 938
    invoke-direct {p0, p3}, Lcom/qualcomm/ims/vt/ImsMedia;->configScreenShare(Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;)V

    :cond_0
    return-void
.end method

.method public setSurface(Landroid/view/Surface;I)V
    .locals 4

    .line 1027
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setSurface st="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 1028
    sget-boolean v0, Lcom/qualcomm/ims/vt/ImsMedia;->mInitCalledFlag:Z

    if-nez v0, :cond_0

    .line 1029
    const-string p0, "setSurface: init not completed. ignore!"

    invoke-static {p0}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    return-void

    .line 1032
    :cond_0
    invoke-direct {p0, p2}, Lcom/qualcomm/ims/vt/ImsMedia;->getImsMediaData(I)Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;

    move-result-object v0

    .line 1033
    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->-$$Nest$mgetSurface(Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;)Landroid/view/Surface;

    move-result-object v1

    if-eqz p1, :cond_1

    .line 1035
    invoke-static {p1}, Lcom/qualcomm/ims/vt/ImsMedia;->isSurfaceValid(Landroid/view/Surface;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1036
    const-string p0, "setSurface:  Invalid surface"

    invoke-static {p0}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    return-void

    .line 1040
    :cond_1
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsMedia;->isImsVtRequestAlive()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1041
    const-string p0, "ImsVtRequest service is not alive"

    invoke-static {p0}, Lcom/qualcomm/ims/vt/ImsMedia;->loge(Ljava/lang/String;)V

    return-void

    .line 1047
    :cond_2
    invoke-static {v1, p1}, Lcom/qualcomm/ims/vt/ImsMedia;->haveSameParent(Landroid/view/Surface;Landroid/view/Surface;)Z

    move-result v2

    if-nez v2, :cond_4

    if-eqz v1, :cond_3

    if-eqz p1, :cond_3

    .line 1049
    iget-object v1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mImsVtRequest:Lcom/qualcomm/ims/vt/IImsMediaRequest;

    iget v2, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mClientHandle:I

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3, p2}, Lcom/qualcomm/ims/vt/IImsMediaRequest;->setFarEndSurface(ILandroid/view/Surface;I)V

    .line 1051
    :cond_3
    invoke-static {v0, p1}, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->-$$Nest$msetSurface(Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;Landroid/view/Surface;)V

    .line 1052
    iget-object p1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mImsVtRequest:Lcom/qualcomm/ims/vt/IImsMediaRequest;

    iget p0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mClientHandle:I

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->-$$Nest$mgetSurface(Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;)Landroid/view/Surface;

    move-result-object v0

    invoke-interface {p1, p0, v0, p2}, Lcom/qualcomm/ims/vt/IImsMediaRequest;->setFarEndSurface(ILandroid/view/Surface;I)V

    :cond_4
    return-void
.end method

.method public stopScreenShare(I)V
    .locals 3

    .line 948
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsMedia;->isImsVtRequestAlive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 949
    const-string p0, "ImsVtRequest service is not alive"

    invoke-static {p0}, Lcom/qualcomm/ims/vt/ImsMedia;->loge(Ljava/lang/String;)V

    return-void

    .line 953
    :cond_0
    const-string v0, "stopScreenShare"

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 954
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mImsVtRequest:Lcom/qualcomm/ims/vt/IImsMediaRequest;

    iget v1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mClientHandle:I

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2, v2}, Lcom/qualcomm/ims/vt/IImsMediaRequest;->setSharedDisplayParameters(III)V

    .line 955
    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/ImsMedia;->getImsMediaData(I)Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;

    move-result-object p0

    const/16 p1, 0xf0

    const/16 v0, 0x140

    .line 956
    invoke-static {p0, p1, v0}, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->-$$Nest$msetSharedDisplayDimensions(Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;II)V

    return-void
.end method
