.class public abstract Lvendor/qti/ImsVtService/IImsVtCallBack$Stub;
.super Landroid/os/Binder;
.source "IImsVtCallBack.java"

# interfaces
.implements Lvendor/qti/ImsVtService/IImsVtCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/qti/ImsVtService/IImsVtCallBack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvendor/qti/ImsVtService/IImsVtCallBack$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_cameraFrameRateCb:I = 0x6

.field static final TRANSACTION_commonMediaEventsCb:I = 0x2

.field static final TRANSACTION_dataUsageCb:I = 0x9

.field static final TRANSACTION_displayModeCb:I = 0x4

.field static final TRANSACTION_downscaleCb:I = 0xe

.field static final TRANSACTION_dualVtAnswerRespCb:I = 0xd

.field static final TRANSACTION_dualVtCapabilityCb:I = 0xa

.field static final TRANSACTION_dualVtIncomingCb:I = 0xc

.field static final TRANSACTION_dualVtRequestRespCb:I = 0xb

.field static final TRANSACTION_paramReadyCb:I = 0x8

.field static final TRANSACTION_peerResolutionCb:I = 0x3

.field static final TRANSACTION_recordingSurfaceCb:I = 0x7

.field static final TRANSACTION_responseCb:I = 0x1

.field static final TRANSACTION_videoQualityCb:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 82
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 83
    const-string v0, "vendor.qti.ImsVtService.IImsVtCallBack"

    invoke-virtual {p0, p0, v0}, Lvendor/qti/ImsVtService/IImsVtCallBack$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lvendor/qti/ImsVtService/IImsVtCallBack;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 94
    :cond_0
    const-string v0, "vendor.qti.ImsVtService.IImsVtCallBack"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 95
    instance-of v1, v0, Lvendor/qti/ImsVtService/IImsVtCallBack;

    if-eqz v1, :cond_1

    .line 96
    check-cast v0, Lvendor/qti/ImsVtService/IImsVtCallBack;

    return-object v0

    .line 98
    :cond_1
    new-instance v0, Lvendor/qti/ImsVtService/IImsVtCallBack$Stub$Proxy;

    invoke-direct {v0, p0}, Lvendor/qti/ImsVtService/IImsVtCallBack$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 163
    :pswitch_0
    const-string p0, "downscaleCb"

    return-object p0

    .line 159
    :pswitch_1
    const-string p0, "dualVtAnswerRespCb"

    return-object p0

    .line 155
    :pswitch_2
    const-string p0, "dualVtIncomingCb"

    return-object p0

    .line 151
    :pswitch_3
    const-string p0, "dualVtRequestRespCb"

    return-object p0

    .line 147
    :pswitch_4
    const-string p0, "dualVtCapabilityCb"

    return-object p0

    .line 143
    :pswitch_5
    const-string p0, "dataUsageCb"

    return-object p0

    .line 139
    :pswitch_6
    const-string p0, "paramReadyCb"

    return-object p0

    .line 135
    :pswitch_7
    const-string p0, "recordingSurfaceCb"

    return-object p0

    .line 131
    :pswitch_8
    const-string p0, "cameraFrameRateCb"

    return-object p0

    .line 127
    :pswitch_9
    const-string p0, "videoQualityCb"

    return-object p0

    .line 123
    :pswitch_a
    const-string p0, "displayModeCb"

    return-object p0

    .line 119
    :pswitch_b
    const-string p0, "peerResolutionCb"

    return-object p0

    .line 115
    :pswitch_c
    const-string p0, "commonMediaEventsCb"

    return-object p0

    .line 111
    :pswitch_d
    const-string p0, "responseCb"

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

    .line 174
    invoke-static {p1}, Lvendor/qti/ImsVtService/IImsVtCallBack$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    const v1, 0xffffff

    if-gt p1, v1, :cond_0

    .line 179
    const-string v1, "vendor.qti.ImsVtService.IImsVtCallBack"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    packed-switch p1, :pswitch_data_0

    move-object v2, p0

    .line 381
    invoke-super {v2, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 367
    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 369
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 371
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 373
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 374
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 375
    invoke-virtual {p0, p1, p4, v1, v2}, Lvendor/qti/ImsVtService/IImsVtCallBack$Stub;->downscaleCb(IIII)V

    .line 376
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 354
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 356
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 358
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 359
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 360
    invoke-virtual {p0, p1, p4, v1}, Lvendor/qti/ImsVtService/IImsVtCallBack$Stub;->dualVtAnswerRespCb(III)V

    .line 361
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 343
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 345
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 346
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 347
    invoke-virtual {p0, p1, p4}, Lvendor/qti/ImsVtService/IImsVtCallBack$Stub;->dualVtIncomingCb(II)V

    .line 348
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 330
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 332
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 334
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 335
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 336
    invoke-virtual {p0, p1, p4, v1}, Lvendor/qti/ImsVtService/IImsVtCallBack$Stub;->dualVtRequestRespCb(III)V

    .line 337
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 317
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 319
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 321
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 322
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 323
    invoke-virtual {p0, p1, p4, v1}, Lvendor/qti/ImsVtService/IImsVtCallBack$Stub;->dualVtCapabilityCb(III)V

    .line 324
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 304
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 306
    sget-object p4, Lvendor/qti/ImsVtService/ImsVtDataUsage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p4

    check-cast p4, [Lvendor/qti/ImsVtService/ImsVtDataUsage;

    .line 308
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 309
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 310
    invoke-virtual {p0, p1, p4, v1}, Lvendor/qti/ImsVtService/IImsVtCallBack$Stub;->dataUsageCb(I[Lvendor/qti/ImsVtService/ImsVtDataUsage;I)V

    .line 311
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 281
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 283
    sget-object p1, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Landroid/view/Surface;

    .line 285
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 287
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 289
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 291
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 293
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 295
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 296
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object v2, p0

    .line 297
    invoke-virtual/range {v2 .. v10}, Lvendor/qti/ImsVtService/IImsVtCallBack$Stub;->paramReadyCb(ILandroid/view/Surface;IIIIII)V

    .line 298
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_7
    move-object v2, p0

    .line 268
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p0

    .line 270
    sget-object p1, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/Surface;

    .line 272
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 273
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 274
    invoke-virtual {v2, p0, p1, p4}, Lvendor/qti/ImsVtService/IImsVtCallBack$Stub;->recordingSurfaceCb(ILandroid/view/Surface;I)V

    .line 275
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_8
    move-object v2, p0

    .line 255
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p0

    .line 257
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 259
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 260
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 261
    invoke-virtual {v2, p0, p1, p4}, Lvendor/qti/ImsVtService/IImsVtCallBack$Stub;->cameraFrameRateCb(III)V

    .line 262
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_9
    move-object v2, p0

    .line 242
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p0

    .line 244
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 246
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 247
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 248
    invoke-virtual {v2, p0, p1, p4}, Lvendor/qti/ImsVtService/IImsVtCallBack$Stub;->videoQualityCb(III)V

    .line 249
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :pswitch_a
    move-object v2, p0

    .line 229
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p0

    .line 231
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 233
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 234
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 235
    invoke-virtual {v2, p0, p1, p4}, Lvendor/qti/ImsVtService/IImsVtCallBack$Stub;->displayModeCb(III)V

    .line 236
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :pswitch_b
    move-object v2, p0

    .line 214
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p0

    .line 216
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 218
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 220
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 221
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 222
    invoke-virtual {v2, p0, p1, p4, v1}, Lvendor/qti/ImsVtService/IImsVtCallBack$Stub;->peerResolutionCb(IIII)V

    .line 223
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :pswitch_c
    move-object v2, p0

    .line 201
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p0

    .line 203
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 205
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 206
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 207
    invoke-virtual {v2, p0, p1, p4}, Lvendor/qti/ImsVtService/IImsVtCallBack$Stub;->commonMediaEventsCb(III)V

    .line 208
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :pswitch_d
    move-object v2, p0

    .line 186
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p0

    .line 188
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 190
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 192
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 193
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 194
    invoke-virtual {v2, p0, p1, p4, v1}, Lvendor/qti/ImsVtService/IImsVtCallBack$Stub;->responseCb(IIII)V

    .line 195
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

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
