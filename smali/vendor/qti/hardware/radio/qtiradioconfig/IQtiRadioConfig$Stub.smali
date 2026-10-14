.class public abstract Lvendor/qti/hardware/radio/qtiradioconfig/IQtiRadioConfig$Stub;
.super Landroid/os/Binder;
.source "IQtiRadioConfig.java"

# interfaces
.implements Lvendor/qti/hardware/radio/qtiradioconfig/IQtiRadioConfig;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/qti/hardware/radio/qtiradioconfig/IQtiRadioConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvendor/qti/hardware/radio/qtiradioconfig/IQtiRadioConfig$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_getCiwlanCapability:I = 0x8

.field static final TRANSACTION_getDdsSwitchCapability:I = 0x9

.field static final TRANSACTION_getDualDataCapability:I = 0x6

.field static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_getSecureModeStatus:I = 0x2

.field static final TRANSACTION_getSimTypeInfo:I = 0x4

.field static final TRANSACTION_isFeatureSupported:I = 0xb

.field static final TRANSACTION_sendUserPreferenceForDataDuringVoiceCall:I = 0xa

.field static final TRANSACTION_setCallbacks:I = 0x1

.field static final TRANSACTION_setDualDataUserPreference:I = 0x7

.field static final TRANSACTION_setMsimPreference:I = 0x3

.field static final TRANSACTION_setSimType:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 76
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 77
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/qtiradioconfig/IQtiRadioConfig$Stub;->markVintfStability()V

    .line 78
    sget-object v0, Lvendor/qti/hardware/radio/qtiradioconfig/IQtiRadioConfig$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Lvendor/qti/hardware/radio/qtiradioconfig/IQtiRadioConfig$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lvendor/qti/hardware/radio/qtiradioconfig/IQtiRadioConfig;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 89
    :cond_0
    sget-object v0, Lvendor/qti/hardware/radio/qtiradioconfig/IQtiRadioConfig$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 90
    instance-of v1, v0, Lvendor/qti/hardware/radio/qtiradioconfig/IQtiRadioConfig;

    if-eqz v1, :cond_1

    .line 91
    check-cast v0, Lvendor/qti/hardware/radio/qtiradioconfig/IQtiRadioConfig;

    return-object v0

    .line 93
    :cond_1
    new-instance v0, Lvendor/qti/hardware/radio/qtiradioconfig/IQtiRadioConfig$Stub$Proxy;

    invoke-direct {v0, p0}, Lvendor/qti/hardware/radio/qtiradioconfig/IQtiRadioConfig$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const v0, 0xffffff

    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    if-gt p1, v0, :cond_0

    .line 102
    sget-object v2, Lvendor/qti/hardware/radio/qtiradioconfig/IQtiRadioConfig$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    if-ne p1, v0, :cond_1

    .line 105
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 106
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/qtiradioconfig/IQtiRadioConfig$Stub;->getInterfaceVersion()I

    move-result p0

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :cond_1
    const v0, 0xfffffe

    if-ne p1, v0, :cond_2

    .line 110
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 111
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/qtiradioconfig/IQtiRadioConfig$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :cond_2
    packed-switch p1, :pswitch_data_0

    .line 218
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 209
    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 210
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 211
    invoke-virtual {p0, p1}, Lvendor/qti/hardware/radio/qtiradioconfig/IQtiRadioConfig$Stub;->isFeatureSupported(I)Z

    move-result p0

    .line 212
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 213
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    .line 199
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 201
    invoke-virtual {p2}, Landroid/os/Parcel;->createBooleanArray()[Z

    move-result-object p3

    .line 202
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 203
    invoke-virtual {p0, p1, p3}, Lvendor/qti/hardware/radio/qtiradioconfig/IQtiRadioConfig$Stub;->sendUserPreferenceForDataDuringVoiceCall(I[Z)V

    goto/16 :goto_0

    .line 191
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 192
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 193
    invoke-virtual {p0, p1}, Lvendor/qti/hardware/radio/qtiradioconfig/IQtiRadioConfig$Stub;->getDdsSwitchCapability(I)V

    goto/16 :goto_0

    .line 183
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 184
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 185
    invoke-virtual {p0, p1}, Lvendor/qti/hardware/radio/qtiradioconfig/IQtiRadioConfig$Stub;->getCiwlanCapability(I)V

    goto :goto_0

    .line 173
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 175
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p3

    .line 176
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 177
    invoke-virtual {p0, p1, p3}, Lvendor/qti/hardware/radio/qtiradioconfig/IQtiRadioConfig$Stub;->setDualDataUserPreference(IZ)V

    goto :goto_0

    .line 165
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 166
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 167
    invoke-virtual {p0, p1}, Lvendor/qti/hardware/radio/qtiradioconfig/IQtiRadioConfig$Stub;->getDualDataCapability(I)V

    goto :goto_0

    .line 155
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 157
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p3

    .line 158
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 159
    invoke-virtual {p0, p1, p3}, Lvendor/qti/hardware/radio/qtiradioconfig/IQtiRadioConfig$Stub;->setSimType(I[I)V

    goto :goto_0

    .line 147
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 148
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 149
    invoke-virtual {p0, p1}, Lvendor/qti/hardware/radio/qtiradioconfig/IQtiRadioConfig$Stub;->getSimTypeInfo(I)V

    goto :goto_0

    .line 137
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 139
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 140
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 141
    invoke-virtual {p0, p1, p3}, Lvendor/qti/hardware/radio/qtiradioconfig/IQtiRadioConfig$Stub;->setMsimPreference(II)V

    goto :goto_0

    .line 129
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 130
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 131
    invoke-virtual {p0, p1}, Lvendor/qti/hardware/radio/qtiradioconfig/IQtiRadioConfig$Stub;->getSecureModeStatus(I)V

    goto :goto_0

    .line 119
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lvendor/qti/hardware/radio/qtiradioconfig/IQtiRadioConfigResponse$Stub;->asInterface(Landroid/os/IBinder;)Lvendor/qti/hardware/radio/qtiradioconfig/IQtiRadioConfigResponse;

    move-result-object p1

    .line 121
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p3

    invoke-static {p3}, Lvendor/qti/hardware/radio/qtiradioconfig/IQtiRadioConfigIndication$Stub;->asInterface(Landroid/os/IBinder;)Lvendor/qti/hardware/radio/qtiradioconfig/IQtiRadioConfigIndication;

    move-result-object p3

    .line 122
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 123
    invoke-virtual {p0, p1, p3}, Lvendor/qti/hardware/radio/qtiradioconfig/IQtiRadioConfig$Stub;->setCallbacks(Lvendor/qti/hardware/radio/qtiradioconfig/IQtiRadioConfigResponse;Lvendor/qti/hardware/radio/qtiradioconfig/IQtiRadioConfigIndication;)V

    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
