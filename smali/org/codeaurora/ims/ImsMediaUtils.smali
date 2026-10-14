.class public Lorg/codeaurora/ims/ImsMediaUtils;
.super Ljava/lang/Object;
.source "ImsMediaUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newImsStreamMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;
    .locals 2

    const/4 v0, 0x3

    const/4 v1, 0x0

    .line 15
    invoke-static {v0, v1}, Lorg/codeaurora/ims/ImsMediaUtils;->newImsStreamMediaProfile(II)Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v0

    return-object v0
.end method

.method public static newImsStreamMediaProfile(II)Landroid/telephony/ims/ImsStreamMediaProfile;
    .locals 1

    const/4 v0, 0x0

    .line 21
    invoke-static {v0, p0, p1}, Lorg/codeaurora/ims/ImsMediaUtils;->newImsStreamMediaProfile(III)Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object p0

    return-object p0
.end method

.method public static newImsStreamMediaProfile(III)Landroid/telephony/ims/ImsStreamMediaProfile;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 27
    invoke-static {p0, p1, v0, v1, p2}, Lorg/codeaurora/ims/ImsMediaUtils;->newImsStreamMediaProfile(IIIII)Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object p0

    return-object p0
.end method

.method public static newImsStreamMediaProfile(IIII)Landroid/telephony/ims/ImsStreamMediaProfile;
    .locals 1

    const/4 v0, 0x3

    .line 34
    invoke-static {p0, v0, p1, p2, p3}, Lorg/codeaurora/ims/ImsMediaUtils;->newImsStreamMediaProfile(IIIII)Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object p0

    return-object p0
.end method

.method public static newImsStreamMediaProfile(IIIII)Landroid/telephony/ims/ImsStreamMediaProfile;
    .locals 6

    .line 40
    new-instance v0, Landroid/telephony/ims/ImsStreamMediaProfile;

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/telephony/ims/ImsStreamMediaProfile;-><init>(IIIII)V

    return-object v0
.end method
