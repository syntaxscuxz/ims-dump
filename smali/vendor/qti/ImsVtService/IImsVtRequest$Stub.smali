.class public abstract Lvendor/qti/ImsVtService/IImsVtRequest$Stub;
.super Landroid/os/Binder;
.source "IImsVtRequest.java"

# interfaces
.implements Lvendor/qti/ImsVtService/IImsVtRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/qti/ImsVtService/IImsVtRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvendor/qti/ImsVtService/IImsVtRequest$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_deInit:I = 0x3

.field static final TRANSACTION_dualVtAnswer:I = 0xe

.field static final TRANSACTION_dualVtRequest:I = 0xd

.field static final TRANSACTION_init:I = 0x2

.field static final TRANSACTION_queryDualVtCapability:I = 0xc

.field static final TRANSACTION_registerCallBack:I = 0x1

.field static final TRANSACTION_requestRtpDataUsage:I = 0x8

.field static final TRANSACTION_setCameraInfo:I = 0x5

.field static final TRANSACTION_setDeviceOrientation:I = 0x4

.field static final TRANSACTION_setFarEndSurface:I = 0x6

.field static final TRANSACTION_setLocalRenderingDelay:I = 0xb

.field static final TRANSACTION_setLocalRenderingParameters:I = 0xa

.field static final TRANSACTION_setSharedDisplayParameters:I = 0x9

.field static final TRANSACTION_setVideoImageBuffer:I = 0x7


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 73
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 74
    const-string v0, "vendor.qti.ImsVtService.IImsVtRequest"

    invoke-virtual {p0, p0, v0}, Lvendor/qti/ImsVtService/IImsVtRequest$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lvendor/qti/ImsVtService/IImsVtRequest;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 85
    :cond_0
    const-string v0, "vendor.qti.ImsVtService.IImsVtRequest"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 86
    instance-of v1, v0, Lvendor/qti/ImsVtService/IImsVtRequest;

    if-eqz v1, :cond_1

    .line 87
    check-cast v0, Lvendor/qti/ImsVtService/IImsVtRequest;

    return-object v0

    .line 89
    :cond_1
    new-instance v0, Lvendor/qti/ImsVtService/IImsVtRequest$Stub$Proxy;

    invoke-direct {v0, p0}, Lvendor/qti/ImsVtService/IImsVtRequest$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 154
    :pswitch_0
    const-string p0, "dualVtAnswer"

    return-object p0

    .line 150
    :pswitch_1
    const-string p0, "dualVtRequest"

    return-object p0

    .line 146
    :pswitch_2
    const-string p0, "queryDualVtCapability"

    return-object p0

    .line 142
    :pswitch_3
    const-string p0, "setLocalRenderingDelay"

    return-object p0

    .line 138
    :pswitch_4
    const-string p0, "setLocalRenderingParameters"

    return-object p0

    .line 134
    :pswitch_5
    const-string p0, "setSharedDisplayParameters"

    return-object p0

    .line 130
    :pswitch_6
    const-string p0, "requestRtpDataUsage"

    return-object p0

    .line 126
    :pswitch_7
    const-string p0, "setVideoImageBuffer"

    return-object p0

    .line 122
    :pswitch_8
    const-string p0, "setFarEndSurface"

    return-object p0

    .line 118
    :pswitch_9
    const-string p0, "setCameraInfo"

    return-object p0

    .line 114
    :pswitch_a
    const-string p0, "setDeviceOrientation"

    return-object p0

    .line 110
    :pswitch_b
    const-string p0, "deInit"

    return-object p0

    .line 106
    :pswitch_c
    const-string p0, "init"

    return-object p0

    .line 102
    :pswitch_d
    const-string p0, "registerCallBack"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .locals 0

    .line 165
    invoke-static {p1}, Lvendor/qti/ImsVtService/IImsVtRequest$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    const v1, 0xffffff

    if-gt p1, v1, :cond_0

    .line 170
    const-string v1, "vendor.qti.ImsVtService.IImsVtRequest"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    packed-switch p1, :pswitch_data_0

    move-object v1, p0

    .line 344
    invoke-super {v1, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 331
    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 333
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 335
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 337
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 338
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 339
    invoke-virtual {p0, p1, p3, p4, v1}, Lvendor/qti/ImsVtService/IImsVtRequest$Stub;->dualVtAnswer(IIII)V

    goto/16 :goto_0

    .line 319
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 321
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 323
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 324
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 325
    invoke-virtual {p0, p1, p3, p4}, Lvendor/qti/ImsVtService/IImsVtRequest$Stub;->dualVtRequest(III)V

    goto/16 :goto_0

    .line 307
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 309
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 311
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 312
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 313
    invoke-virtual {p0, p1, p3, p4}, Lvendor/qti/ImsVtService/IImsVtRequest$Stub;->queryDualVtCapability(III)V

    goto/16 :goto_0

    .line 295
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 297
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 299
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 300
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 301
    invoke-virtual {p0, p1, p3, p4}, Lvendor/qti/ImsVtService/IImsVtRequest$Stub;->setLocalRenderingDelay(III)V

    goto/16 :goto_0

    .line 281
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 283
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 285
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 287
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 288
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 289
    invoke-virtual {p0, p1, p3, p4, v1}, Lvendor/qti/ImsVtService/IImsVtRequest$Stub;->setLocalRenderingParameters(IIII)V

    goto/16 :goto_0

    .line 267
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 269
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 271
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 273
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 274
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 275
    invoke-virtual {p0, p1, p3, p4, v1}, Lvendor/qti/ImsVtService/IImsVtRequest$Stub;->setSharedDisplayParameters(IIII)V

    goto/16 :goto_0

    .line 255
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 257
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 259
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 260
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 261
    invoke-virtual {p0, p1, p3, p4}, Lvendor/qti/ImsVtService/IImsVtRequest$Stub;->requestRtpDataUsage(III)V

    goto/16 :goto_0

    .line 239
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 241
    sget-object p1, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Landroid/os/ParcelFileDescriptor;

    .line 243
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 245
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 247
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 248
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object v1, p0

    .line 249
    invoke-virtual/range {v1 .. v6}, Lvendor/qti/ImsVtService/IImsVtRequest$Stub;->setVideoImageBuffer(ILandroid/os/ParcelFileDescriptor;III)V

    goto/16 :goto_0

    :pswitch_8
    move-object v1, p0

    .line 227
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p0

    .line 229
    sget-object p1, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/Surface;

    .line 231
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 232
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 233
    invoke-virtual {v1, p0, p1, p3}, Lvendor/qti/ImsVtService/IImsVtRequest$Stub;->setFarEndSurface(ILandroid/view/Surface;I)V

    goto :goto_0

    :pswitch_9
    move-object v1, p0

    .line 213
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p0

    .line 215
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 217
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 219
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 220
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 221
    invoke-virtual {v1, p0, p1, p3, p4}, Lvendor/qti/ImsVtService/IImsVtRequest$Stub;->setCameraInfo(IIII)V

    goto :goto_0

    :pswitch_a
    move-object v1, p0

    .line 201
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p0

    .line 203
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 205
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 206
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 207
    invoke-virtual {v1, p0, p1, p3}, Lvendor/qti/ImsVtService/IImsVtRequest$Stub;->setDeviceOrientation(III)V

    goto :goto_0

    :pswitch_b
    move-object v1, p0

    .line 193
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p0

    .line 194
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 195
    invoke-virtual {v1, p0}, Lvendor/qti/ImsVtService/IImsVtRequest$Stub;->deInit(I)V

    goto :goto_0

    :pswitch_c
    move-object v1, p0

    .line 185
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p0

    .line 186
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 187
    invoke-virtual {v1, p0}, Lvendor/qti/ImsVtService/IImsVtRequest$Stub;->init(I)V

    goto :goto_0

    :pswitch_d
    move-object v1, p0

    .line 177
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Lvendor/qti/ImsVtService/IImsVtCallBack$Stub;->asInterface(Landroid/os/IBinder;)Lvendor/qti/ImsVtService/IImsVtCallBack;

    move-result-object p0

    .line 178
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 179
    invoke-virtual {v1, p0}, Lvendor/qti/ImsVtService/IImsVtRequest$Stub;->registerCallBack(Lvendor/qti/ImsVtService/IImsVtCallBack;)V

    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
