.class public Lvendor/qti/hardware/radio/ims/CallComposerInfo;
.super Ljava/lang/Object;
.source "CallComposerInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lvendor/qti/hardware/radio/ims/CallComposerInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public callId:I

.field public imageUrl:Ljava/lang/String;

.field public location:Lvendor/qti/hardware/radio/ims/CallLocation;

.field public organization:[C

.field public priority:I

.field public subject:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    new-instance v0, Lvendor/qti/hardware/radio/ims/CallComposerInfo$1;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/CallComposerInfo$1;-><init>()V

    sput-object v0, Lvendor/qti/hardware/radio/ims/CallComposerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lvendor/qti/hardware/radio/ims/CallComposerInfo;->callId:I

    .line 13
    iput v0, p0, Lvendor/qti/hardware/radio/ims/CallComposerInfo;->priority:I

    return-void
.end method

.method private describeContents(Ljava/lang/Object;)I
    .locals 1

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    .line 80
    :cond_0
    instance-of v0, p1, Landroid/os/Parcelable;

    if-eqz v0, :cond_1

    .line 81
    check-cast p1, Landroid/os/Parcelable;

    invoke-interface {p1}, Landroid/os/Parcelable;->describeContents()I

    move-result p0

    :cond_1
    return p0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 75
    iget-object v0, p0, Lvendor/qti/hardware/radio/ims/CallComposerInfo;->location:Lvendor/qti/hardware/radio/ims/CallLocation;

    invoke-direct {p0, v0}, Lvendor/qti/hardware/radio/ims/CallComposerInfo;->describeContents(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final getStability()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final readFromParcel(Landroid/os/Parcel;)V
    .locals 4

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x4

    const v3, 0x7fffffff

    if-lt v1, v2, :cond_d

    .line 53
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

    .line 69
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void

    .line 67
    :cond_0
    invoke-static {}, Lorg/codeaurora/ims/ImsServiceSub$$ExternalSyntheticBUOutline0;->m()V

    return-void

    .line 54
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lvendor/qti/hardware/radio/ims/CallComposerInfo;->callId:I

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_3

    sub-int/2addr v3, v1

    if-gt v0, v3, :cond_2

    goto :goto_0

    .line 67
    :cond_2
    invoke-static {}, Lorg/codeaurora/ims/ImsServiceSub$$ExternalSyntheticBUOutline0;->m()V

    return-void

    .line 56
    :cond_3
    :try_start_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lvendor/qti/hardware/radio/ims/CallComposerInfo;->priority:I

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_5

    sub-int/2addr v3, v1

    if-gt v0, v3, :cond_4

    goto :goto_0

    .line 67
    :cond_4
    invoke-static {}, Lorg/codeaurora/ims/ImsServiceSub$$ExternalSyntheticBUOutline0;->m()V

    return-void

    .line 58
    :cond_5
    :try_start_3
    invoke-virtual {p1}, Landroid/os/Parcel;->createCharArray()[C

    move-result-object v2

    iput-object v2, p0, Lvendor/qti/hardware/radio/ims/CallComposerInfo;->subject:[C

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_7

    sub-int/2addr v3, v1

    if-gt v0, v3, :cond_6

    goto :goto_0

    .line 67
    :cond_6
    invoke-static {}, Lorg/codeaurora/ims/ImsServiceSub$$ExternalSyntheticBUOutline0;->m()V

    return-void

    .line 60
    :cond_7
    :try_start_4
    sget-object v2, Lvendor/qti/hardware/radio/ims/CallLocation;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvendor/qti/hardware/radio/ims/CallLocation;

    iput-object v2, p0, Lvendor/qti/hardware/radio/ims/CallComposerInfo;->location:Lvendor/qti/hardware/radio/ims/CallLocation;

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_9

    sub-int/2addr v3, v1

    if-gt v0, v3, :cond_8

    goto :goto_0

    .line 67
    :cond_8
    invoke-static {}, Lorg/codeaurora/ims/ImsServiceSub$$ExternalSyntheticBUOutline0;->m()V

    return-void

    .line 62
    :cond_9
    :try_start_5
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lvendor/qti/hardware/radio/ims/CallComposerInfo;->imageUrl:Ljava/lang/String;

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_b

    sub-int/2addr v3, v1

    if-gt v0, v3, :cond_a

    goto :goto_0

    .line 67
    :cond_a
    invoke-static {}, Lorg/codeaurora/ims/ImsServiceSub$$ExternalSyntheticBUOutline0;->m()V

    return-void

    .line 64
    :cond_b
    :try_start_6
    invoke-virtual {p1}, Landroid/os/Parcel;->createCharArray()[C

    move-result-object v2

    iput-object v2, p0, Lvendor/qti/hardware/radio/ims/CallComposerInfo;->organization:[C
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    sub-int/2addr v3, v1

    if-gt v0, v3, :cond_c

    goto :goto_0

    .line 67
    :cond_c
    invoke-static {}, Lorg/codeaurora/ims/ImsServiceSub$$ExternalSyntheticBUOutline0;->m()V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 52
    :cond_d
    :try_start_7
    new-instance p0, Landroid/os/BadParcelableException;

    const-string v2, "Parcelable too small"

    invoke-direct {p0, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :goto_1
    sub-int/2addr v3, v1

    if-le v0, v3, :cond_e

    .line 67
    invoke-static {}, Lorg/codeaurora/ims/ImsServiceSub$$ExternalSyntheticBUOutline0;->m()V

    return-void

    :cond_e
    add-int/2addr v0, v1

    .line 69
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 70
    throw p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    const/4 v1, 0x0

    .line 35
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 36
    iget v1, p0, Lvendor/qti/hardware/radio/ims/CallComposerInfo;->callId:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 37
    iget v1, p0, Lvendor/qti/hardware/radio/ims/CallComposerInfo;->priority:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 38
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/CallComposerInfo;->subject:[C

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeCharArray([C)V

    .line 39
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/CallComposerInfo;->location:Lvendor/qti/hardware/radio/ims/CallLocation;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 40
    iget-object p2, p0, Lvendor/qti/hardware/radio/ims/CallComposerInfo;->imageUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 41
    iget-object p0, p0, Lvendor/qti/hardware/radio/ims/CallComposerInfo;->organization:[C

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeCharArray([C)V

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p0

    .line 43
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    sub-int p2, p0, v0

    .line 44
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 45
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void
.end method
