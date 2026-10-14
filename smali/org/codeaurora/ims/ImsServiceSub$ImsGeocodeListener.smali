.class Lorg/codeaurora/ims/ImsServiceSub$ImsGeocodeListener;
.super Ljava/lang/Object;
.source "ImsServiceSub.java"

# interfaces
.implements Landroid/location/Geocoder$GeocodeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsServiceSub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImsGeocodeListener"
.end annotation


# instance fields
.field private mLatitude:D

.field private mLongitude:D

.field final synthetic this$0:Lorg/codeaurora/ims/ImsServiceSub;


# direct methods
.method constructor <init>(Lorg/codeaurora/ims/ImsServiceSub;DD)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 2194
    iput-object p1, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsGeocodeListener;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2195
    iput-wide p2, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsGeocodeListener;->mLatitude:D

    .line 2196
    iput-wide p4, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsGeocodeListener;->mLongitude:D

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .locals 7

    .line 2218
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsGeocodeListener;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ImsGeocoderListener.onError: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->-$$Nest$mloge(Lorg/codeaurora/ims/ImsServiceSub;Ljava/lang/String;)V

    .line 2220
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsGeocodeListener;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    iget-wide v2, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsGeocodeListener;->mLatitude:D

    iget-wide v4, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsGeocodeListener;->mLongitude:D

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lorg/codeaurora/ims/ImsServiceSub;->-$$Nest$msendGeolocationResponse(Lorg/codeaurora/ims/ImsServiceSub;DDLandroid/location/Address;)V

    return-void
.end method

.method public onGeocode(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/location/Address;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 2202
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2208
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/Address;

    .line 2209
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsGeocodeListener;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onGeocode address="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/location/Address;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/codeaurora/ims/ImsServiceSub;->-$$Nest$mlogd(Lorg/codeaurora/ims/ImsServiceSub;Ljava/lang/String;)V

    goto :goto_0

    .line 2211
    :cond_0
    iget-object p1, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsGeocodeListener;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    const-string v0, "ImsGeocodeListener: Error getting addresses from Geocoder!"

    invoke-static {p1, v0}, Lorg/codeaurora/ims/ImsServiceSub;->-$$Nest$mloge(Lorg/codeaurora/ims/ImsServiceSub;Ljava/lang/String;)V

    const/4 p1, 0x0

    :goto_0
    move-object v5, p1

    .line 2213
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsGeocodeListener;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    iget-wide v1, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsGeocodeListener;->mLatitude:D

    iget-wide v3, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsGeocodeListener;->mLongitude:D

    invoke-static/range {v0 .. v5}, Lorg/codeaurora/ims/ImsServiceSub;->-$$Nest$msendGeolocationResponse(Lorg/codeaurora/ims/ImsServiceSub;DDLandroid/location/Address;)V

    return-void
.end method
