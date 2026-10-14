.class public Lorg/codeaurora/ims/ServiceStatus;
.super Ljava/lang/Object;
.source "ServiceStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;
    }
.end annotation


# static fields
.field public static final STATUS_DISABLED:I = 0x0

.field public static final STATUS_ENABLED:I = 0x2

.field public static final STATUS_NOT_SUPPORTED:I = 0x3

.field public static final STATUS_PARTIALLY_ENABLED:I = 0x1


# instance fields
.field public accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

.field public isValid:Z

.field public rttMode:I

.field public status:I

.field public type:I

.field public userdata:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Lorg/codeaurora/ims/ServiceStatus;->isValid:Z

    return-void
.end method


# virtual methods
.method public isRadioTech5G()Z
    .locals 2

    .line 36
    iget-object p0, p0, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    aget-object p0, p0, v0

    if-nez p0, :cond_0

    goto :goto_0

    .line 39
    :cond_0
    iget p0, p0, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->networkMode:I

    const/16 v1, 0x14

    if-ne p0, v1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    return v0
.end method
