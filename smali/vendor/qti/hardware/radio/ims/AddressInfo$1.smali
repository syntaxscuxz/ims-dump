.class Lvendor/qti/hardware/radio/ims/AddressInfo$1;
.super Ljava/lang/Object;
.source "AddressInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/qti/hardware/radio/ims/AddressInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lvendor/qti/hardware/radio/ims/AddressInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 21
    invoke-virtual {p0, p1}, Lvendor/qti/hardware/radio/ims/AddressInfo$1;->createFromParcel(Landroid/os/Parcel;)Lvendor/qti/hardware/radio/ims/AddressInfo;

    move-result-object p0

    return-object p0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lvendor/qti/hardware/radio/ims/AddressInfo;
    .locals 0

    .line 24
    new-instance p0, Lvendor/qti/hardware/radio/ims/AddressInfo;

    invoke-direct {p0}, Lvendor/qti/hardware/radio/ims/AddressInfo;-><init>()V

    .line 25
    invoke-virtual {p0, p1}, Lvendor/qti/hardware/radio/ims/AddressInfo;->readFromParcel(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 21
    invoke-virtual {p0, p1}, Lvendor/qti/hardware/radio/ims/AddressInfo$1;->newArray(I)[Lvendor/qti/hardware/radio/ims/AddressInfo;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lvendor/qti/hardware/radio/ims/AddressInfo;
    .locals 0

    .line 30
    new-array p0, p1, [Lvendor/qti/hardware/radio/ims/AddressInfo;

    return-object p0
.end method
