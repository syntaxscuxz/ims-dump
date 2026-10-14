.class public Lorg/codeaurora/ims/HoInfo;
.super Ljava/lang/Object;
.source "HoInfo.java"


# static fields
.field public static final CANCEL:I = 0x3

.field public static final COMPLETE_FAIL:I = 0x2

.field public static final COMPLETE_SUCCESS:I = 0x1

.field public static final INVALID:I = -0x1

.field public static final NOT_TRIGGERED:I = 0x4

.field public static final NOT_TRIGGERED_MOBILE_DATA_OFF:I = 0x5

.field public static final START:I


# instance fields
.field private mErrorCode:Ljava/lang/String;

.field private mErrorMessage:Ljava/lang/String;

.field private mExtraInfo:[B

.field private mExtraType:I

.field private mSrcTech:I

.field private mTargetTech:I

.field private mType:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 43
    iput v0, p0, Lorg/codeaurora/ims/HoInfo;->mType:I

    const v1, 0x7fffffff

    .line 44
    iput v1, p0, Lorg/codeaurora/ims/HoInfo;->mSrcTech:I

    .line 45
    iput v1, p0, Lorg/codeaurora/ims/HoInfo;->mTargetTech:I

    .line 46
    iput v0, p0, Lorg/codeaurora/ims/HoInfo;->mExtraType:I

    const/4 v0, 0x0

    .line 47
    iput-object v0, p0, Lorg/codeaurora/ims/HoInfo;->mExtraInfo:[B

    .line 48
    const-string v0, ""

    iput-object v0, p0, Lorg/codeaurora/ims/HoInfo;->mErrorCode:Ljava/lang/String;

    .line 49
    iput-object v0, p0, Lorg/codeaurora/ims/HoInfo;->mErrorMessage:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getErrorCode()Ljava/lang/String;
    .locals 0

    .line 102
    iget-object p0, p0, Lorg/codeaurora/ims/HoInfo;->mErrorCode:Ljava/lang/String;

    return-object p0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 0

    .line 110
    iget-object p0, p0, Lorg/codeaurora/ims/HoInfo;->mErrorMessage:Ljava/lang/String;

    return-object p0
.end method

.method public getExtraInfo()[B
    .locals 0

    .line 89
    iget-object p0, p0, Lorg/codeaurora/ims/HoInfo;->mExtraInfo:[B

    return-object p0
.end method

.method public getExtraType()I
    .locals 0

    .line 81
    iget p0, p0, Lorg/codeaurora/ims/HoInfo;->mExtraType:I

    return p0
.end method

.method public getSrcTech()I
    .locals 0

    .line 65
    iget p0, p0, Lorg/codeaurora/ims/HoInfo;->mSrcTech:I

    return p0
.end method

.method public getTargetTech()I
    .locals 0

    .line 73
    iget p0, p0, Lorg/codeaurora/ims/HoInfo;->mTargetTech:I

    return p0
.end method

.method public getType()I
    .locals 0

    .line 57
    iget p0, p0, Lorg/codeaurora/ims/HoInfo;->mType:I

    return p0
.end method

.method public setErrorCode(Ljava/lang/String;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lorg/codeaurora/ims/HoInfo;->mErrorCode:Ljava/lang/String;

    return-void
.end method

.method public setErrorMessage(Ljava/lang/String;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lorg/codeaurora/ims/HoInfo;->mErrorMessage:Ljava/lang/String;

    return-void
.end method

.method public setExtra(I[B)V
    .locals 0

    .line 93
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/HoInfo;->setExtraType(I)V

    .line 94
    invoke-virtual {p0, p2}, Lorg/codeaurora/ims/HoInfo;->setExtraInfo([B)V

    return-void
.end method

.method public setExtraInfo([B)V
    .locals 0

    .line 85
    iput-object p1, p0, Lorg/codeaurora/ims/HoInfo;->mExtraInfo:[B

    return-void
.end method

.method public setExtraType(I)V
    .locals 0

    .line 77
    iput p1, p0, Lorg/codeaurora/ims/HoInfo;->mExtraType:I

    return-void
.end method

.method public setSrcTech(I)V
    .locals 0

    .line 61
    iput p1, p0, Lorg/codeaurora/ims/HoInfo;->mSrcTech:I

    return-void
.end method

.method public setTargetTech(I)V
    .locals 0

    .line 69
    iput p1, p0, Lorg/codeaurora/ims/HoInfo;->mTargetTech:I

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 53
    iput p1, p0, Lorg/codeaurora/ims/HoInfo;->mType:I

    return-void
.end method
