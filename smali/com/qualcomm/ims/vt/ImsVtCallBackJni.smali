.class public Lcom/qualcomm/ims/vt/ImsVtCallBackJni;
.super Ljava/lang/Object;
.source "ImsVtCallBackJni.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ImsVtCallBackJni"

.field public static final VIDEO_QUALITY_EXCELLENT:I = 0x3

.field public static final VIDEO_QUALITY_HIGH:I = 0x2

.field public static final VIDEO_QUALITY_LOW:I = 0x0

.field public static final VIDEO_QUALITY_MEDIUM:I = 0x1

.field public static final VT_CAMERA_FRAME_RATE_EVT:I = 0xa

.field public static final VT_CAMERA_PARAM_READY_EVT:I = 0x1

.field public static final VT_DATA_USAGE_EVT:I = 0x8

.field public static final VT_DEVICE_READY_EVT:I = 0xb

.field public static final VT_DISPLAY_MODE_EVT:I = 0x5

.field public static final VT_DOWN_SCALE_EVT:I = 0xc

.field public static final VT_PEER_RESOLUTION_CHANGE_EVT:I = 0x6

.field public static final VT_PLAYER_START_EVT:I = 0x3

.field public static final VT_PLAYER_STOP_EVT:I = 0x4

.field public static final VT_RECORDER_START_EVT:I = 0x2

.field public static final VT_RECORDER_STOP_EVT:I = 0x9

.field public static final VT_VIDEO_QUALITY_EVT:I = 0x7


# instance fields
.field private final mImsMedia:Lcom/qualcomm/ims/vt/ImsMedia;

.field private final mRequest:Lcom/qualcomm/ims/vt/ImsVtRequestJni;


# direct methods
.method public constructor <init>(Lcom/qualcomm/ims/vt/ImsMedia;Lcom/qualcomm/ims/vt/ImsVtRequestJni;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/qualcomm/ims/vt/ImsVtCallBackJni;->mImsMedia:Lcom/qualcomm/ims/vt/ImsMedia;

    .line 55
    iput-object p2, p0, Lcom/qualcomm/ims/vt/ImsVtCallBackJni;->mRequest:Lcom/qualcomm/ims/vt/ImsVtRequestJni;

    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 0

    .line 59
    const-string p0, "ImsVtCallBackJni"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 0

    .line 63
    const-string p0, "ImsVtCallBackJni"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static toMediaEvent(I)I
    .locals 2

    const/4 v0, 0x3

    const/4 v1, 0x2

    if-eq p0, v1, :cond_3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/16 v1, 0x9

    if-eq p0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0

    :cond_1
    return v1

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    return v0
.end method

.method public static toVideoQuality(I)I
    .locals 2

    if-eqz p0, :cond_2

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p0, v1, :cond_1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x4

    return p0

    :cond_0
    return v1

    :cond_1
    return v0

    :cond_2
    const/4 p0, 0x3

    return p0
.end method


# virtual methods
.method public onDataUsageEvent(I[J)V
    .locals 2

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onDataUsageEvent mediaId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVtCallBackJni;->log(Ljava/lang/String;)V

    .line 169
    iget-object p0, p0, Lcom/qualcomm/ims/vt/ImsVtCallBackJni;->mImsMedia:Lcom/qualcomm/ims/vt/ImsMedia;

    invoke-virtual {p0, p1, p2}, Lcom/qualcomm/ims/vt/ImsMedia;->processDataUsage(I[J)V

    return-void
.end method

.method public onDualVtEvent(IILcom/qualcomm/ims/vt/ImsMedia$DualVtCallbackInfo;)V
    .locals 2

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onDualVtEvent eventId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mediaId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " info="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVtCallBackJni;->log(Ljava/lang/String;)V

    .line 158
    iget-object p0, p0, Lcom/qualcomm/ims/vt/ImsVtCallBackJni;->mImsMedia:Lcom/qualcomm/ims/vt/ImsMedia;

    invoke-virtual {p0, p1, p2, p3}, Lcom/qualcomm/ims/vt/ImsMedia;->onDualVtEvent(IILcom/qualcomm/ims/vt/ImsMedia$DualVtCallbackInfo;)V

    return-void
.end method

.method public onMediaEvent(III)V
    .locals 9

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onMediaEvent eventId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mediaId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " stream="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVtCallBackJni;->log(Ljava/lang/String;)V

    .line 77
    const-string v0, " w="

    packed-switch p1, :pswitch_data_0

    .line 143
    :pswitch_0
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "onMediaEvent: unknown eventId="

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/ImsVtCallBackJni;->loge(Ljava/lang/String;)V

    return-void

    .line 129
    :pswitch_1
    invoke-static {}, Lcom/qualcomm/ims/vt/ImsVtRequestJni;->nativeGetDownscaledHeight()I

    move-result p1

    .line 130
    invoke-static {}, Lcom/qualcomm/ims/vt/ImsVtRequestJni;->nativeGetDownscaledWidth()I

    move-result v1

    .line 131
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onMediaEvent DOWN_SCALE h="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVtCallBackJni;->log(Ljava/lang/String;)V

    .line 132
    iget-object p0, p0, Lcom/qualcomm/ims/vt/ImsVtCallBackJni;->mImsMedia:Lcom/qualcomm/ims/vt/ImsMedia;

    invoke-virtual {p0, p2, p1, v1, p3}, Lcom/qualcomm/ims/vt/ImsMedia;->processDownscale(IIII)V

    return-void

    .line 96
    :pswitch_2
    invoke-static {p3}, Lcom/qualcomm/ims/vt/ImsVtRequestJni;->nativeGetRecordingSurface(I)Landroid/view/Surface;

    move-result-object p1

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onMediaEvent DEVICE_READY surface="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVtCallBackJni;->log(Ljava/lang/String;)V

    .line 98
    iget-object p0, p0, Lcom/qualcomm/ims/vt/ImsVtCallBackJni;->mImsMedia:Lcom/qualcomm/ims/vt/ImsMedia;

    invoke-virtual {p0, p2, p1, p3}, Lcom/qualcomm/ims/vt/ImsMedia;->processRecordingSurface(ILandroid/view/Surface;I)V

    return-void

    .line 123
    :pswitch_3
    invoke-static {p3}, Lcom/qualcomm/ims/vt/ImsVtRequestJni;->nativeGetRecorderFrameRate(I)I

    move-result p1

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onMediaEvent CAMERA_FRAME_RATE rate="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVtCallBackJni;->log(Ljava/lang/String;)V

    .line 125
    iget-object p0, p0, Lcom/qualcomm/ims/vt/ImsVtCallBackJni;->mImsMedia:Lcom/qualcomm/ims/vt/ImsMedia;

    invoke-virtual {p0, p2, p1, p3}, Lcom/qualcomm/ims/vt/ImsMedia;->processCameraFrameRate(III)V

    return-void

    .line 117
    :pswitch_4
    invoke-static {p3}, Lcom/qualcomm/ims/vt/ImsVtRequestJni;->nativeGetVideoQualityIndication(I)I

    move-result p1

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onMediaEvent VIDEO_QUALITY quality="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVtCallBackJni;->log(Ljava/lang/String;)V

    .line 119
    iget-object p0, p0, Lcom/qualcomm/ims/vt/ImsVtCallBackJni;->mImsMedia:Lcom/qualcomm/ims/vt/ImsMedia;

    invoke-virtual {p0, p2, p1, p3}, Lcom/qualcomm/ims/vt/ImsMedia;->processVideoQuality(III)V

    return-void

    .line 102
    :pswitch_5
    invoke-static {p3}, Lcom/qualcomm/ims/vt/ImsVtRequestJni;->nativeGetPeerHeight(I)I

    move-result p1

    .line 103
    invoke-static {p3}, Lcom/qualcomm/ims/vt/ImsVtRequestJni;->nativeGetPeerWidth(I)I

    move-result v1

    .line 104
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onMediaEvent PEER_RESOLUTION h="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVtCallBackJni;->log(Ljava/lang/String;)V

    .line 105
    iget-object p0, p0, Lcom/qualcomm/ims/vt/ImsVtCallBackJni;->mImsMedia:Lcom/qualcomm/ims/vt/ImsMedia;

    invoke-virtual {p0, p2, p1, v1, p3}, Lcom/qualcomm/ims/vt/ImsMedia;->processPeerResolutionChange(IIII)V

    return-void

    .line 111
    :pswitch_6
    invoke-static {p3}, Lcom/qualcomm/ims/vt/ImsVtRequestJni;->nativeGetUIOrientationMode(I)I

    move-result p1

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onMediaEvent DISPLAY_MODE mode="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVtCallBackJni;->log(Ljava/lang/String;)V

    .line 113
    iget-object p0, p0, Lcom/qualcomm/ims/vt/ImsVtCallBackJni;->mImsMedia:Lcom/qualcomm/ims/vt/ImsMedia;

    invoke-virtual {p0, p2, p1, p3}, Lcom/qualcomm/ims/vt/ImsMedia;->processDisplayMode(III)V

    return-void

    .line 140
    :pswitch_7
    iget-object p0, p0, Lcom/qualcomm/ims/vt/ImsVtCallBackJni;->mImsMedia:Lcom/qualcomm/ims/vt/ImsMedia;

    invoke-static {p1}, Lcom/qualcomm/ims/vt/ImsVtCallBackJni;->toMediaEvent(I)I

    move-result p1

    invoke-virtual {p0, p2, p1, p3}, Lcom/qualcomm/ims/vt/ImsMedia;->processCommonMediaEvents(III)V

    return-void

    .line 80
    :pswitch_8
    invoke-static {p3}, Lcom/qualcomm/ims/vt/ImsVtRequestJni;->nativeGetRecordingSurface(I)Landroid/view/Surface;

    move-result-object v2

    .line 81
    invoke-static {p3}, Lcom/qualcomm/ims/vt/ImsVtRequestJni;->nativeGetNegotiatedHeight(I)I

    move-result v3

    .line 82
    invoke-static {p3}, Lcom/qualcomm/ims/vt/ImsVtRequestJni;->nativeGetNegotiatedWidth(I)I

    move-result v4

    .line 83
    invoke-static {p3}, Lcom/qualcomm/ims/vt/ImsVtRequestJni;->nativeGetNegotiatedFPS(I)I

    move-result v5

    .line 86
    invoke-static {p3}, Lcom/qualcomm/ims/vt/ImsVtRequestJni;->nativeGetUIOrientationMode(I)I

    move-result v6

    .line 87
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onMediaEvent PARAM_READY h= "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " w= "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " fps= "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " mode= "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/ImsVtCallBackJni;->log(Ljava/lang/String;)V

    .line 90
    const-string v7, "video/avc"

    .line 91
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsVtCallBackJni;->mImsMedia:Lcom/qualcomm/ims/vt/ImsMedia;

    move v1, p2

    move v8, p3

    invoke-virtual/range {v0 .. v8}, Lcom/qualcomm/ims/vt/ImsMedia;->processParamReady(ILandroid/view/Surface;IIIILjava/lang/String;I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_7
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
