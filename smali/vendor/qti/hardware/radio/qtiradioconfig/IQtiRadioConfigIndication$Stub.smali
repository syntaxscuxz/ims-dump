.class public abstract Lvendor/qti/hardware/radio/qtiradioconfig/IQtiRadioConfigIndication$Stub;
.super Landroid/os/Binder;
.source "IQtiRadioConfigIndication.java"

# interfaces
.implements Lvendor/qti/hardware/radio/qtiradioconfig/IQtiRadioConfigIndication;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/qti/hardware/radio/qtiradioconfig/IQtiRadioConfigIndication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvendor/qti/hardware/radio/qtiradioconfig/IQtiRadioConfigIndication$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_onCiwlanCapabilityChanged:I = 0x4

.field static final TRANSACTION_onDdsSwitchCapabilityChanged:I = 0x5

.field static final TRANSACTION_onDdsSwitchCriteriaChanged:I = 0x6

.field static final TRANSACTION_onDdsSwitchRecommendation:I = 0x7

.field static final TRANSACTION_onDualDataCapabilityChanged:I = 0x2

.field static final TRANSACTION_onDualDataRecommendation:I = 0x3

.field static final TRANSACTION_onSecureModeStatusChange:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 63
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 64
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/qtiradioconfig/IQtiRadioConfigIndication$Stub;->markVintfStability()V

    .line 65
    sget-object v0, Lvendor/qti/hardware/radio/qtiradioconfig/IQtiRadioConfigIndication$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Lvendor/qti/hardware/radio/qtiradioconfig/IQtiRadioConfigIndication$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lvendor/qti/hardware/radio/qtiradioconfig/IQtiRadioConfigIndication;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 76
    :cond_0
    sget-object v0, Lvendor/qti/hardware/radio/qtiradioconfig/IQtiRadioConfigIndication$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 77
    instance-of v1, v0, Lvendor/qti/hardware/radio/qtiradioconfig/IQtiRadioConfigIndication;

    if-eqz v1, :cond_1

    .line 78
    check-cast v0, Lvendor/qti/hardware/radio/qtiradioconfig/IQtiRadioConfigIndication;

    return-object v0

    .line 80
    :cond_1
    new-instance v0, Lvendor/qti/hardware/radio/qtiradioconfig/IQtiRadioConfigIndication$Stub$Proxy;

    invoke-direct {v0, p0}, Lvendor/qti/hardware/radio/qtiradioconfig/IQtiRadioConfigIndication$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    .line 89
    sget-object v2, Lvendor/qti/hardware/radio/qtiradioconfig/IQtiRadioConfigIndication$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    if-ne p1, v0, :cond_1

    .line 92
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 93
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/qtiradioconfig/IQtiRadioConfigIndication$Stub;->getInterfaceVersion()I

    move-result p0

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :cond_1
    const v0, 0xfffffe

    if-ne p1, v0, :cond_2

    .line 97
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 98
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/qtiradioconfig/IQtiRadioConfigIndication$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :cond_2
    packed-switch p1, :pswitch_data_0

    .line 161
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 154
    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 155
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 156
    invoke-virtual {p0, p1}, Lvendor/qti/hardware/radio/qtiradioconfig/IQtiRadioConfigIndication$Stub;->onDdsSwitchRecommendation(I)V

    goto :goto_0

    .line 146
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 147
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 148
    invoke-virtual {p0, p1}, Lvendor/qti/hardware/radio/qtiradioconfig/IQtiRadioConfigIndication$Stub;->onDdsSwitchCriteriaChanged(Z)V

    goto :goto_0

    .line 138
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 139
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 140
    invoke-virtual {p0, p1}, Lvendor/qti/hardware/radio/qtiradioconfig/IQtiRadioConfigIndication$Stub;->onDdsSwitchCapabilityChanged(Z)V

    goto :goto_0

    .line 130
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 131
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 132
    invoke-virtual {p0, p1}, Lvendor/qti/hardware/radio/qtiradioconfig/IQtiRadioConfigIndication$Stub;->onCiwlanCapabilityChanged(I)V

    goto :goto_0

    .line 122
    :pswitch_4
    sget-object p1, Lvendor/qti/hardware/radio/qtiradioconfig/DualDataRecommendation;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lvendor/qti/hardware/radio/qtiradioconfig/DualDataRecommendation;

    .line 123
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 124
    invoke-virtual {p0, p1}, Lvendor/qti/hardware/radio/qtiradioconfig/IQtiRadioConfigIndication$Stub;->onDualDataRecommendation(Lvendor/qti/hardware/radio/qtiradioconfig/DualDataRecommendation;)V

    goto :goto_0

    .line 114
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 115
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 116
    invoke-virtual {p0, p1}, Lvendor/qti/hardware/radio/qtiradioconfig/IQtiRadioConfigIndication$Stub;->onDualDataCapabilityChanged(Z)V

    goto :goto_0

    .line 106
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 107
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 108
    invoke-virtual {p0, p1}, Lvendor/qti/hardware/radio/qtiradioconfig/IQtiRadioConfigIndication$Stub;->onSecureModeStatusChange(Z)V

    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
