.class public Lvendor/qti/hardware/radio/ims/VosActionInfo;
.super Ljava/lang/Object;
.source "VosActionInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lvendor/qti/hardware/radio/ims/VosActionInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public vosMoveInfo:Lvendor/qti/hardware/radio/ims/VosMoveInfo;

.field public vosMoveInfo2:Lvendor/qti/hardware/radio/ims/VosMoveInfo2;

.field public vosTouchInfo:Lvendor/qti/hardware/radio/ims/VosTouchInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    new-instance v0, Lvendor/qti/hardware/radio/ims/VosActionInfo$1;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/VosActionInfo$1;-><init>()V

    sput-object v0, Lvendor/qti/hardware/radio/ims/VosActionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private describeContents(Ljava/lang/Object;)I
    .locals 1

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    .line 70
    :cond_0
    instance-of v0, p1, Landroid/os/Parcelable;

    if-eqz v0, :cond_1

    .line 71
    check-cast p1, Landroid/os/Parcelable;

    invoke-interface {p1}, Landroid/os/Parcelable;->describeContents()I

    move-result p0

    :cond_1
    return p0
.end method


# virtual methods
.method public describeContents()I
    .locals 2

    .line 63
    iget-object v0, p0, Lvendor/qti/hardware/radio/ims/VosActionInfo;->vosMoveInfo:Lvendor/qti/hardware/radio/ims/VosMoveInfo;

    invoke-direct {p0, v0}, Lvendor/qti/hardware/radio/ims/VosActionInfo;->describeContents(Ljava/lang/Object;)I

    move-result v0

    .line 64
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/VosActionInfo;->vosTouchInfo:Lvendor/qti/hardware/radio/ims/VosTouchInfo;

    invoke-direct {p0, v1}, Lvendor/qti/hardware/radio/ims/VosActionInfo;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 65
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/VosActionInfo;->vosMoveInfo2:Lvendor/qti/hardware/radio/ims/VosMoveInfo2;

    invoke-direct {p0, v1}, Lvendor/qti/hardware/radio/ims/VosActionInfo;->describeContents(Ljava/lang/Object;)I

    move-result p0

    or-int/2addr p0, v0

    return p0
.end method

.method public final getStability()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final readFromParcel(Landroid/os/Parcel;)V
    .locals 4

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x4

    const v3, 0x7fffffff

    if-lt v1, v2, :cond_7

    .line 47
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_1

    sub-int/2addr v3, v1

    if-gt v0, v3, :cond_0

    :goto_0
    add-int/2addr v0, v1

    .line 57
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void

    .line 55
    :cond_0
    invoke-static {}, Lorg/codeaurora/ims/ImsServiceSub$$ExternalSyntheticBUOutline0;->m()V

    return-void

    .line 48
    :cond_1
    :try_start_1
    sget-object v2, Lvendor/qti/hardware/radio/ims/VosMoveInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvendor/qti/hardware/radio/ims/VosMoveInfo;

    iput-object v2, p0, Lvendor/qti/hardware/radio/ims/VosActionInfo;->vosMoveInfo:Lvendor/qti/hardware/radio/ims/VosMoveInfo;

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_3

    sub-int/2addr v3, v1

    if-gt v0, v3, :cond_2

    goto :goto_0

    .line 55
    :cond_2
    invoke-static {}, Lorg/codeaurora/ims/ImsServiceSub$$ExternalSyntheticBUOutline0;->m()V

    return-void

    .line 50
    :cond_3
    :try_start_2
    sget-object v2, Lvendor/qti/hardware/radio/ims/VosTouchInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvendor/qti/hardware/radio/ims/VosTouchInfo;

    iput-object v2, p0, Lvendor/qti/hardware/radio/ims/VosActionInfo;->vosTouchInfo:Lvendor/qti/hardware/radio/ims/VosTouchInfo;

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_5

    sub-int/2addr v3, v1

    if-gt v0, v3, :cond_4

    goto :goto_0

    .line 55
    :cond_4
    invoke-static {}, Lorg/codeaurora/ims/ImsServiceSub$$ExternalSyntheticBUOutline0;->m()V

    return-void

    .line 52
    :cond_5
    :try_start_3
    sget-object v2, Lvendor/qti/hardware/radio/ims/VosMoveInfo2;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvendor/qti/hardware/radio/ims/VosMoveInfo2;

    iput-object v2, p0, Lvendor/qti/hardware/radio/ims/VosActionInfo;->vosMoveInfo2:Lvendor/qti/hardware/radio/ims/VosMoveInfo2;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    sub-int/2addr v3, v1

    if-gt v0, v3, :cond_6

    goto :goto_0

    .line 55
    :cond_6
    invoke-static {}, Lorg/codeaurora/ims/ImsServiceSub$$ExternalSyntheticBUOutline0;->m()V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 46
    :cond_7
    :try_start_4
    new-instance p0, Landroid/os/BadParcelableException;

    const-string v2, "Parcelable too small"

    invoke-direct {p0, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_1
    sub-int/2addr v3, v1

    if-le v0, v3, :cond_8

    .line 55
    invoke-static {}, Lorg/codeaurora/ims/ImsServiceSub$$ExternalSyntheticBUOutline0;->m()V

    return-void

    :cond_8
    add-int/2addr v0, v1

    .line 57
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 58
    throw p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    const/4 v1, 0x0

    .line 32
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 33
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/VosActionInfo;->vosMoveInfo:Lvendor/qti/hardware/radio/ims/VosMoveInfo;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 34
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/VosActionInfo;->vosTouchInfo:Lvendor/qti/hardware/radio/ims/VosTouchInfo;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 35
    iget-object p0, p0, Lvendor/qti/hardware/radio/ims/VosActionInfo;->vosMoveInfo2:Lvendor/qti/hardware/radio/ims/VosMoveInfo2;

    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p0

    .line 37
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    sub-int p2, p0, v0

    .line 38
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 39
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void
.end method
