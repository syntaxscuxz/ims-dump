.class Lvendor/qti/hardware/radio/ims/SrtpEncryptionInfo$1;
.super Ljava/lang/Object;
.source "SrtpEncryptionInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/qti/hardware/radio/ims/SrtpEncryptionInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lvendor/qti/hardware/radio/ims/SrtpEncryptionInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 16
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

    .line 16
    invoke-virtual {p0, p1}, Lvendor/qti/hardware/radio/ims/SrtpEncryptionInfo$1;->createFromParcel(Landroid/os/Parcel;)Lvendor/qti/hardware/radio/ims/SrtpEncryptionInfo;

    move-result-object p0

    return-object p0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lvendor/qti/hardware/radio/ims/SrtpEncryptionInfo;
    .locals 0

    .line 19
    new-instance p0, Lvendor/qti/hardware/radio/ims/SrtpEncryptionInfo;

    invoke-direct {p0}, Lvendor/qti/hardware/radio/ims/SrtpEncryptionInfo;-><init>()V

    .line 20
    invoke-virtual {p0, p1}, Lvendor/qti/hardware/radio/ims/SrtpEncryptionInfo;->readFromParcel(Landroid/os/Parcel;)V

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

    .line 16
    invoke-virtual {p0, p1}, Lvendor/qti/hardware/radio/ims/SrtpEncryptionInfo$1;->newArray(I)[Lvendor/qti/hardware/radio/ims/SrtpEncryptionInfo;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lvendor/qti/hardware/radio/ims/SrtpEncryptionInfo;
    .locals 0

    .line 25
    new-array p0, p1, [Lvendor/qti/hardware/radio/ims/SrtpEncryptionInfo;

    return-object p0
.end method
