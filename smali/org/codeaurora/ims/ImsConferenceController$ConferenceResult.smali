.class Lorg/codeaurora/ims/ImsConferenceController$ConferenceResult;
.super Ljava/lang/Object;
.source "ImsConferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsConferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConferenceResult"
.end annotation


# instance fields
.field activeCall:Lorg/codeaurora/ims/ImsCallSessionImpl;

.field confHostCall:Lorg/codeaurora/ims/ImsCallSessionImpl;

.field heldCall:Lorg/codeaurora/ims/ImsCallSessionImpl;

.field shouldHaveTransientSession:Z


# direct methods
.method private constructor <init>(Lorg/codeaurora/ims/ImsConferenceController;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    .line 220
    iput-boolean p1, p0, Lorg/codeaurora/ims/ImsConferenceController$ConferenceResult;->shouldHaveTransientSession:Z

    return-void
.end method

.method synthetic constructor <init>(Lorg/codeaurora/ims/ImsConferenceController;Lorg/codeaurora/ims/ImsConferenceController-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsConferenceController$ConferenceResult;-><init>(Lorg/codeaurora/ims/ImsConferenceController;)V

    return-void
.end method
