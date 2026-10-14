.class Lvendor/qti/hardware/radio/ims/ConferenceAbortReasonInfo$1;
.super Ljava/lang/Object;
.source "ConferenceAbortReasonInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/qti/hardware/radio/ims/ConferenceAbortReasonInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lvendor/qti/hardware/radio/ims/ConferenceAbortReasonInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 15
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

    .line 15
    invoke-virtual {p0, p1}, Lvendor/qti/hardware/radio/ims/ConferenceAbortReasonInfo$1;->createFromParcel(Landroid/os/Parcel;)Lvendor/qti/hardware/radio/ims/ConferenceAbortReasonInfo;

    move-result-object p0

    return-object p0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lvendor/qti/hardware/radio/ims/ConferenceAbortReasonInfo;
    .locals 0

    .line 18
    new-instance p0, Lvendor/qti/hardware/radio/ims/ConferenceAbortReasonInfo;

    invoke-direct {p0}, Lvendor/qti/hardware/radio/ims/ConferenceAbortReasonInfo;-><init>()V

    .line 19
    invoke-virtual {p0, p1}, Lvendor/qti/hardware/radio/ims/ConferenceAbortReasonInfo;->readFromParcel(Landroid/os/Parcel;)V

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

    .line 15
    invoke-virtual {p0, p1}, Lvendor/qti/hardware/radio/ims/ConferenceAbortReasonInfo$1;->newArray(I)[Lvendor/qti/hardware/radio/ims/ConferenceAbortReasonInfo;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lvendor/qti/hardware/radio/ims/ConferenceAbortReasonInfo;
    .locals 0

    .line 24
    new-array p0, p1, [Lvendor/qti/hardware/radio/ims/ConferenceAbortReasonInfo;

    return-object p0
.end method
