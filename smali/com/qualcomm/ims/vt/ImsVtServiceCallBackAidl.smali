.class public Lcom/qualcomm/ims/vt/ImsVtServiceCallBackAidl;
.super Lvendor/qti/ImsVtService/IImsVtCallBack$Stub;
.source "ImsVtServiceCallBackAidl.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "ImsVtServiceCallBackAidl"


# instance fields
.field private mImsMedia:Lcom/qualcomm/ims/vt/ImsMedia;


# direct methods
.method public constructor <init>(Lcom/qualcomm/ims/vt/ImsMedia;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lvendor/qti/ImsVtService/IImsVtCallBack$Stub;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/qualcomm/ims/vt/ImsVtServiceCallBackAidl;->mImsMedia:Lcom/qualcomm/ims/vt/ImsMedia;

    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 0

    .line 28
    const-string p0, "ImsVtServiceCallBackAidl"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public cameraFrameRateCb(III)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " < cameraFrameRateCb : MediaId : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Framerate : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVtServiceCallBackAidl;->log(Ljava/lang/String;)V

    .line 77
    iget-object p0, p0, Lcom/qualcomm/ims/vt/ImsVtServiceCallBackAidl;->mImsMedia:Lcom/qualcomm/ims/vt/ImsMedia;

    invoke-static {p3}, Lcom/qualcomm/ims/vt/ImsVtAidlUtils;->toStream(I)I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/qualcomm/ims/vt/ImsMedia;->processCameraFrameRate(III)V

    return-void
.end method

.method public commonMediaEventsCb(III)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " < commonMediaEventsCb : MediaId : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Event : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVtServiceCallBackAidl;->log(Ljava/lang/String;)V

    .line 44
    iget-object p0, p0, Lcom/qualcomm/ims/vt/ImsVtServiceCallBackAidl;->mImsMedia:Lcom/qualcomm/ims/vt/ImsMedia;

    invoke-static {p2}, Lcom/qualcomm/ims/vt/ImsVtAidlUtils;->toMediaEvent(I)I

    move-result p2

    .line 45
    invoke-static {p3}, Lcom/qualcomm/ims/vt/ImsVtAidlUtils;->toStream(I)I

    move-result p3

    .line 44
    invoke-virtual {p0, p1, p2, p3}, Lcom/qualcomm/ims/vt/ImsMedia;->processCommonMediaEvents(III)V

    return-void
.end method

.method public dataUsageCb(I[Lvendor/qti/ImsVtService/ImsVtDataUsage;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 105
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, " < dataUsageCb : MediaId : "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p3}, Lcom/qualcomm/ims/vt/ImsVtServiceCallBackAidl;->log(Ljava/lang/String;)V

    .line 106
    iget-object p0, p0, Lcom/qualcomm/ims/vt/ImsVtServiceCallBackAidl;->mImsMedia:Lcom/qualcomm/ims/vt/ImsMedia;

    invoke-static {p2}, Lcom/qualcomm/ims/vt/ImsVtAidlUtils;->toDataUsage([Lvendor/qti/ImsVtService/ImsVtDataUsage;)[J

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/qualcomm/ims/vt/ImsMedia;->processDataUsage(I[J)V

    return-void
.end method

.method public displayModeCb(III)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " < displayModeCb : MediaId : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Orientation mode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVtServiceCallBackAidl;->log(Ljava/lang/String;)V

    .line 61
    iget-object p0, p0, Lcom/qualcomm/ims/vt/ImsVtServiceCallBackAidl;->mImsMedia:Lcom/qualcomm/ims/vt/ImsMedia;

    invoke-static {p2}, Lcom/qualcomm/ims/vt/ImsVtAidlUtils;->toDisplayMode(I)I

    move-result p2

    .line 62
    invoke-static {p3}, Lcom/qualcomm/ims/vt/ImsVtAidlUtils;->toStream(I)I

    move-result p3

    .line 61
    invoke-virtual {p0, p1, p2, p3}, Lcom/qualcomm/ims/vt/ImsMedia;->processDisplayMode(III)V

    return-void
.end method

.method public downscaleCb(IIII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " < downscaleCb : MediaId : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " height : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " width : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVtServiceCallBackAidl;->log(Ljava/lang/String;)V

    .line 114
    iget-object p0, p0, Lcom/qualcomm/ims/vt/ImsVtServiceCallBackAidl;->mImsMedia:Lcom/qualcomm/ims/vt/ImsMedia;

    invoke-static {p4}, Lcom/qualcomm/ims/vt/ImsVtAidlUtils;->toStream(I)I

    move-result p4

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/qualcomm/ims/vt/ImsMedia;->processDownscale(IIII)V

    return-void
.end method

.method public dualVtAnswerRespCb(III)V
    .locals 2

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " < dualVtAnswerRespCb : MediaId : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " direction : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVtServiceCallBackAidl;->log(Ljava/lang/String;)V

    .line 137
    iget-object p0, p0, Lcom/qualcomm/ims/vt/ImsVtServiceCallBackAidl;->mImsMedia:Lcom/qualcomm/ims/vt/ImsMedia;

    invoke-static {p2}, Lcom/qualcomm/ims/vt/ImsVtAidlUtils;->toDualVtDirection(I)I

    move-result p2

    .line 138
    invoke-static {p3}, Lcom/qualcomm/ims/vt/ImsVtAidlUtils;->toDualVtStatus(I)I

    move-result p3

    .line 137
    invoke-virtual {p0, p1, p2, p3}, Lcom/qualcomm/ims/vt/ImsMedia;->processDualVtAnswerRespCb(III)V

    return-void
.end method

.method public dualVtCapabilityCb(III)V
    .locals 2

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " < dualVtCapabilityCb : MediaId : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Direction : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Capability: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVtServiceCallBackAidl;->log(Ljava/lang/String;)V

    .line 121
    iget-object p0, p0, Lcom/qualcomm/ims/vt/ImsVtServiceCallBackAidl;->mImsMedia:Lcom/qualcomm/ims/vt/ImsMedia;

    invoke-static {p2}, Lcom/qualcomm/ims/vt/ImsVtAidlUtils;->toDualVtDirection(I)I

    move-result p2

    .line 122
    invoke-static {p3}, Lcom/qualcomm/ims/vt/ImsVtAidlUtils;->toDualVtCapability(I)I

    move-result p3

    .line 121
    invoke-virtual {p0, p1, p2, p3}, Lcom/qualcomm/ims/vt/ImsMedia;->processDualVtCapabilityCb(III)V

    return-void
.end method

.method public dualVtIncomingCb(II)V
    .locals 2

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " < dualVtIncomingCb : MediaId : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " direction : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVtServiceCallBackAidl;->log(Ljava/lang/String;)V

    .line 144
    iget-object p0, p0, Lcom/qualcomm/ims/vt/ImsVtServiceCallBackAidl;->mImsMedia:Lcom/qualcomm/ims/vt/ImsMedia;

    invoke-static {p2}, Lcom/qualcomm/ims/vt/ImsVtAidlUtils;->toDualVtDirection(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/qualcomm/ims/vt/ImsMedia;->processDualVtIncomingCb(II)V

    return-void
.end method

.method public dualVtRequestRespCb(III)V
    .locals 2

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " < dualVtRequestRespCb : MediaId : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " direction : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVtServiceCallBackAidl;->log(Ljava/lang/String;)V

    .line 129
    iget-object p0, p0, Lcom/qualcomm/ims/vt/ImsVtServiceCallBackAidl;->mImsMedia:Lcom/qualcomm/ims/vt/ImsMedia;

    invoke-static {p2}, Lcom/qualcomm/ims/vt/ImsVtAidlUtils;->toDualVtDirection(I)I

    move-result p2

    .line 130
    invoke-static {p3}, Lcom/qualcomm/ims/vt/ImsVtAidlUtils;->toDualVtStatus(I)I

    move-result p3

    .line 129
    invoke-virtual {p0, p1, p2, p3}, Lcom/qualcomm/ims/vt/ImsMedia;->processDualVtRequestRespCb(III)V

    return-void
.end method

.method public paramReadyCb(ILandroid/view/Surface;IIIIII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " < paramReadyCb : MediaId : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Surface : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " Negotiated height : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Negotiated width : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Negotiated FPS : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " rientation mode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Codec Type : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVtServiceCallBackAidl;->log(Ljava/lang/String;)V

    .line 97
    iget-object p0, p0, Lcom/qualcomm/ims/vt/ImsVtServiceCallBackAidl;->mImsMedia:Lcom/qualcomm/ims/vt/ImsMedia;

    .line 98
    invoke-static {p6}, Lcom/qualcomm/ims/vt/ImsVtAidlUtils;->toDisplayMode(I)I

    move-result p6

    .line 99
    invoke-static {p7}, Lcom/qualcomm/ims/vt/ImsVtAidlUtils;->toCodecType(I)Ljava/lang/String;

    move-result-object p7

    invoke-static {p8}, Lcom/qualcomm/ims/vt/ImsVtAidlUtils;->toStream(I)I

    move-result p8

    .line 97
    invoke-virtual/range {p0 .. p8}, Lcom/qualcomm/ims/vt/ImsMedia;->processParamReady(ILandroid/view/Surface;IIIILjava/lang/String;I)V

    return-void
.end method

.method public peerResolutionCb(IIII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " < peerResolutionCb : MediaId : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Peer Height : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Peer Width : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVtServiceCallBackAidl;->log(Ljava/lang/String;)V

    .line 53
    iget-object p0, p0, Lcom/qualcomm/ims/vt/ImsVtServiceCallBackAidl;->mImsMedia:Lcom/qualcomm/ims/vt/ImsMedia;

    .line 54
    invoke-static {p4}, Lcom/qualcomm/ims/vt/ImsVtAidlUtils;->toStream(I)I

    move-result p4

    .line 53
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/qualcomm/ims/vt/ImsMedia;->processPeerResolutionChange(IIII)V

    return-void
.end method

.method public recordingSurfaceCb(ILandroid/view/Surface;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " < recordingSurfaceCb : MediaId : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Surface : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVtServiceCallBackAidl;->log(Ljava/lang/String;)V

    .line 85
    iget-object p0, p0, Lcom/qualcomm/ims/vt/ImsVtServiceCallBackAidl;->mImsMedia:Lcom/qualcomm/ims/vt/ImsMedia;

    .line 86
    invoke-static {p3}, Lcom/qualcomm/ims/vt/ImsVtAidlUtils;->toStream(I)I

    move-result p3

    .line 85
    invoke-virtual {p0, p1, p2, p3}, Lcom/qualcomm/ims/vt/ImsMedia;->processRecordingSurface(ILandroid/view/Surface;I)V

    return-void
.end method

.method public responseCb(IIII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 34
    new-instance p4, Ljava/lang/StringBuilder;

    const-string v0, " < responseCb : clientHandle : "

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " Request ID : "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " Status : "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p0, p4}, Lcom/qualcomm/ims/vt/ImsVtServiceCallBackAidl;->log(Ljava/lang/String;)V

    .line 36
    iget-object p0, p0, Lcom/qualcomm/ims/vt/ImsVtServiceCallBackAidl;->mImsMedia:Lcom/qualcomm/ims/vt/ImsMedia;

    invoke-static {p2}, Lcom/qualcomm/ims/vt/ImsVtAidlUtils;->toRequestId(I)I

    move-result p2

    .line 37
    invoke-static {p3}, Lcom/qualcomm/ims/vt/ImsVtAidlUtils;->toStatus(I)I

    move-result p3

    .line 36
    invoke-virtual {p0, p1, p2, p3}, Lcom/qualcomm/ims/vt/ImsMedia;->processResponseCallBack(III)V

    return-void
.end method

.method public videoQualityCb(III)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " < videoQualityCb : MediaId : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Video quality : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVtServiceCallBackAidl;->log(Ljava/lang/String;)V

    .line 69
    iget-object p0, p0, Lcom/qualcomm/ims/vt/ImsVtServiceCallBackAidl;->mImsMedia:Lcom/qualcomm/ims/vt/ImsMedia;

    invoke-static {p2}, Lcom/qualcomm/ims/vt/ImsVtAidlUtils;->toVideoQuality(I)I

    move-result p2

    .line 70
    invoke-static {p3}, Lcom/qualcomm/ims/vt/ImsVtAidlUtils;->toStream(I)I

    move-result p3

    .line 69
    invoke-virtual {p0, p1, p2, p3}, Lcom/qualcomm/ims/vt/ImsMedia;->processVideoQuality(III)V

    return-void
.end method
