.class Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaEvent;
.super Ljava/lang/Object;
.source "ImsMedia.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/ims/vt/ImsMedia;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImsMediaEvent"
.end annotation


# instance fields
.field public eventId:I

.field public mediaId:I

.field public stream:I


# direct methods
.method constructor <init>(Lcom/qualcomm/ims/vt/ImsMedia;III)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 353
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 354
    iput p2, p0, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaEvent;->eventId:I

    .line 355
    iput p3, p0, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaEvent;->mediaId:I

    .line 356
    iput p4, p0, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaEvent;->stream:I

    return-void
.end method
