.class public Lorg/codeaurora/ims/parser/ConfInfo;
.super Ljava/lang/Object;
.source "ConfInfo.java"


# static fields
.field public static final INDEX_DISPLAY_TEXT:I = 0x1

.field public static final INDEX_ENDPOINT:I = 0x2

.field public static final INDEX_STATUS:I = 0x3

.field public static final INDEX_USER:I = 0x0

.field public static final MAX_CONF_PARTICIPANT_INFO:I = 0x4

.field private static sHandler:Lorg/codeaurora/ims/parser/SAXXMLHandler;


# instance fields
.field public LOGTAG:Ljava/lang/String;

.field private final STATE_DELETE:I

.field private final STATE_FULL:I

.field private final STATE_PARTIAL:I

.field private final VERSION_EQUAL:I

.field private final VERSION_GREATER:I

.field private final VERSION_INVALID:I

.field private final VERSION_lESSER:I

.field public allowedPartial:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private debug:Z

.field public mCachedElement:Lorg/codeaurora/ims/parser/Element;

.field public mNewElement:Lorg/codeaurora/ims/parser/Element;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput v0, p0, Lorg/codeaurora/ims/parser/ConfInfo;->VERSION_INVALID:I

    const/4 v1, 0x1

    .line 36
    iput v1, p0, Lorg/codeaurora/ims/parser/ConfInfo;->VERSION_EQUAL:I

    const/4 v1, 0x2

    .line 37
    iput v1, p0, Lorg/codeaurora/ims/parser/ConfInfo;->VERSION_GREATER:I

    const/4 v1, 0x3

    .line 38
    iput v1, p0, Lorg/codeaurora/ims/parser/ConfInfo;->VERSION_lESSER:I

    const/4 v1, 0x4

    .line 39
    iput v1, p0, Lorg/codeaurora/ims/parser/ConfInfo;->STATE_FULL:I

    const/4 v1, 0x5

    .line 40
    iput v1, p0, Lorg/codeaurora/ims/parser/ConfInfo;->STATE_PARTIAL:I

    const/4 v1, 0x6

    .line 41
    iput v1, p0, Lorg/codeaurora/ims/parser/ConfInfo;->STATE_DELETE:I

    .line 42
    const-string v1, "ConfInfo"

    iput-object v1, p0, Lorg/codeaurora/ims/parser/ConfInfo;->LOGTAG:Ljava/lang/String;

    .line 43
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/codeaurora/ims/parser/ConfInfo;->allowedPartial:Ljava/util/ArrayList;

    .line 44
    iput-boolean v0, p0, Lorg/codeaurora/ims/parser/ConfInfo;->debug:Z

    .line 58
    new-instance v0, Lorg/codeaurora/ims/parser/Element;

    invoke-direct {v0}, Lorg/codeaurora/ims/parser/Element;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/parser/ConfInfo;->mCachedElement:Lorg/codeaurora/ims/parser/Element;

    .line 59
    invoke-direct {p0}, Lorg/codeaurora/ims/parser/ConfInfo;->setMapAttributeWithDefaultValue()V

    .line 60
    new-instance v0, Lorg/codeaurora/ims/parser/Element;

    invoke-direct {v0}, Lorg/codeaurora/ims/parser/Element;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/parser/ConfInfo;->mNewElement:Lorg/codeaurora/ims/parser/Element;

    .line 61
    invoke-direct {p0}, Lorg/codeaurora/ims/parser/ConfInfo;->preparePartialList()V

    return-void
.end method

.method private UpdateConfDesElement(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 573
    sget-object p0, Lorg/codeaurora/ims/parser/ConfInfo;->sHandler:Lorg/codeaurora/ims/parser/SAXXMLHandler;

    invoke-virtual {p0}, Lorg/codeaurora/ims/parser/SAXXMLHandler;->getConferenceDescElement()Lorg/codeaurora/ims/parser/Element;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private UpdateConfInfoElement(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 569
    sget-object p0, Lorg/codeaurora/ims/parser/ConfInfo;->sHandler:Lorg/codeaurora/ims/parser/SAXXMLHandler;

    invoke-virtual {p0}, Lorg/codeaurora/ims/parser/SAXXMLHandler;->getConferenceInfoLatestMessage()Lorg/codeaurora/ims/parser/Element;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private checkElementState(Lorg/codeaurora/ims/parser/Element;)Ljava/lang/String;
    .locals 3

    .line 513
    const-string v0, "state"

    invoke-virtual {p1, v0}, Lorg/codeaurora/ims/parser/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    move-object v0, p1

    goto :goto_0

    .line 514
    :cond_0
    const-string v0, "full"

    .line 517
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Notification state is"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " element state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/parser/ConfInfo;->debugLog(Ljava/lang/String;)V

    return-object v0
.end method

.method private compareElements(Lorg/codeaurora/ims/parser/Element;)Z
    .locals 2

    .line 579
    invoke-virtual {p1}, Lorg/codeaurora/ims/parser/Element;->getTagName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/codeaurora/ims/parser/ConfInfo;->mCachedElement:Lorg/codeaurora/ims/parser/Element;

    invoke-virtual {v1}, Lorg/codeaurora/ims/parser/Element;->getTagName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/codeaurora/ims/parser/ConfInfo;->mCachedElement:Lorg/codeaurora/ims/parser/Element;

    .line 580
    invoke-virtual {v0}, Lorg/codeaurora/ims/parser/Element;->getParentTag()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/codeaurora/ims/parser/ConfInfo;->mCachedElement:Lorg/codeaurora/ims/parser/Element;

    .line 581
    invoke-virtual {v1}, Lorg/codeaurora/ims/parser/Element;->getParentTag()Ljava/lang/String;

    move-result-object v1

    .line 580
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 589
    invoke-virtual {p1}, Lorg/codeaurora/ims/parser/Element;->getMapAttribute()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/codeaurora/ims/parser/ConfInfo;->mCachedElement:Lorg/codeaurora/ims/parser/Element;

    .line 590
    invoke-virtual {v0}, Lorg/codeaurora/ims/parser/Element;->getMapAttribute()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 591
    invoke-virtual {p1}, Lorg/codeaurora/ims/parser/Element;->getMapAttribute()Ljava/util/Map;

    move-result-object p1

    iget-object p0, p0, Lorg/codeaurora/ims/parser/ConfInfo;->mCachedElement:Lorg/codeaurora/ims/parser/Element;

    .line 592
    invoke-virtual {p0}, Lorg/codeaurora/ims/parser/Element;->getMapAttribute()Ljava/util/Map;

    move-result-object p0

    .line 591
    invoke-interface {p1, p0}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private dumpstate()V
    .locals 9

    .line 94
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ConfInfo;->mCachedElement:Lorg/codeaurora/ims/parser/Element;

    invoke-virtual {v0}, Lorg/codeaurora/ims/parser/Element;->getSubElementList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 96
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 97
    iget-object v2, p0, Lorg/codeaurora/ims/parser/ConfInfo;->mCachedElement:Lorg/codeaurora/ims/parser/Element;

    invoke-virtual {v2}, Lorg/codeaurora/ims/parser/Element;->getTagName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/parser/ConfInfo;->debugLog(Ljava/lang/String;)V

    .line 98
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sublist length: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/parser/ConfInfo;->debugLog(Ljava/lang/String;)V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    .line 100
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "SubElement list Element at Index"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "::"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/codeaurora/ims/parser/Element;

    invoke-virtual {v5}, Lorg/codeaurora/ims/parser/Element;->getTagName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 100
    invoke-virtual {p0, v4}, Lorg/codeaurora/ims/parser/ConfInfo;->debugLog(Ljava/lang/String;)V

    .line 102
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/codeaurora/ims/parser/Element;

    invoke-virtual {v4}, Lorg/codeaurora/ims/parser/Element;->getSubElementList()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 103
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/codeaurora/ims/parser/Element;

    invoke-virtual {v4}, Lorg/codeaurora/ims/parser/Element;->getSubElementList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    .line 104
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "SubElement List Length:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/codeaurora/ims/parser/ConfInfo;->debugLog(Ljava/lang/String;)V

    move v5, v2

    :goto_1
    if-ge v5, v4, :cond_1

    .line 106
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 107
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/codeaurora/ims/parser/Element;

    invoke-virtual {v8}, Lorg/codeaurora/ims/parser/Element;->getSubElementList()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/codeaurora/ims/parser/Element;

    .line 108
    invoke-virtual {v8}, Lorg/codeaurora/ims/parser/Element;->getTagName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 106
    invoke-virtual {p0, v7}, Lorg/codeaurora/ims/parser/ConfInfo;->debugLog(Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 111
    :cond_0
    const-string v4, "List two is null"

    invoke-virtual {p0, v4}, Lorg/codeaurora/ims/parser/ConfInfo;->debugLog(Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 115
    :cond_2
    const-string v0, "List one is null"

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/parser/ConfInfo;->debugLog(Ljava/lang/String;)V

    .line 117
    :cond_3
    invoke-virtual {p0}, Lorg/codeaurora/ims/parser/ConfInfo;->getUserUriList()[Ljava/lang/String;

    return-void
.end method

.method private getConfStateValue()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private getElementIndexOnKeyMatch(Ljava/util/List;Lorg/codeaurora/ims/parser/Element;Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/parser/Element;",
            ">;",
            "Lorg/codeaurora/ims/parser/Element;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    if-nez p1, :cond_0

    goto :goto_1

    .line 238
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    .line 239
    invoke-virtual {p2, p3}, Lorg/codeaurora/ims/parser/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_2

    .line 242
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/parser/Element;

    invoke-virtual {v1, p3}, Lorg/codeaurora/ims/parser/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    const/4 p0, -0x1

    return p0
.end method

.method private getElementIndexOnTagMatch(Ljava/util/List;Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/parser/Element;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 494
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_1

    .line 496
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/parser/Element;

    invoke-virtual {v1}, Lorg/codeaurora/ims/parser/Element;->getTagName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method private getKey(Lorg/codeaurora/ims/parser/Element;)Ljava/lang/String;
    .locals 1

    .line 273
    invoke-virtual {p1}, Lorg/codeaurora/ims/parser/Element;->getTagName()Ljava/lang/String;

    move-result-object p1

    .line 274
    const-string v0, "user"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "endpoint"

    .line 275
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "entry"

    .line 276
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 278
    :cond_0
    const-string v0, "media"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 279
    const-string p0, "id"

    return-object p0

    .line 280
    :cond_1
    const-string v0, "sidebars-by-ref"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 281
    const-string p0, "uri"

    return-object p0

    .line 283
    :cond_2
    const-string p1, " :Is not supported"

    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/parser/ConfInfo;->log(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 277
    :cond_3
    :goto_0
    const-string p0, "entity"

    return-object p0
.end method

.method private getParticipantInfoFromElement(Lorg/codeaurora/ims/parser/Element;)[Ljava/lang/String;
    .locals 5

    const/4 v0, 0x4

    .line 206
    new-array v0, v0, [Ljava/lang/String;

    .line 209
    const-string v1, "entity"

    invoke-virtual {p1, v1}, Lorg/codeaurora/ims/parser/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    .line 212
    const-string v2, "display-text"

    invoke-virtual {p1, v2}, Lorg/codeaurora/ims/parser/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v0, v4

    .line 214
    invoke-virtual {p1}, Lorg/codeaurora/ims/parser/Element;->getSubElementList()Ljava/util/List;

    move-result-object p1

    .line 215
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_1

    .line 216
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "subElement["

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]:: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/codeaurora/ims/parser/Element;

    invoke-virtual {v4}, Lorg/codeaurora/ims/parser/Element;->getTagName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/parser/ConfInfo;->log(Ljava/lang/String;)V

    .line 217
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/codeaurora/ims/parser/Element;

    invoke-virtual {v2}, Lorg/codeaurora/ims/parser/Element;->getTagName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "endpoint"

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 219
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/codeaurora/ims/parser/Element;

    invoke-virtual {v2, v1}, Lorg/codeaurora/ims/parser/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x2

    aput-object v2, v0, v4

    .line 222
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/codeaurora/ims/parser/Element;

    const-string v4, "status"

    invoke-virtual {v2, v4}, Lorg/codeaurora/ims/parser/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x3

    aput-object v2, v0, v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private handleNotificationOnSubElements(Ljava/util/List;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/parser/Element;",
            ">;",
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/parser/Element;",
            ">;)V"
        }
    .end annotation

    .line 411
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 412
    const-string v1, "updateNotification : HandlePartialNotification"

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/parser/ConfInfo;->log(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_5

    .line 414
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/codeaurora/ims/parser/Element;

    .line 415
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "New List :"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "at index : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "tag name:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    invoke-virtual {v2}, Lorg/codeaurora/ims/parser/Element;->getTagName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 415
    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/parser/ConfInfo;->debugLog(Ljava/lang/String;)V

    .line 418
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Old Element List :"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/parser/ConfInfo;->log(Ljava/lang/String;)V

    .line 419
    invoke-virtual {v2}, Lorg/codeaurora/ims/parser/Element;->getTagName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/codeaurora/ims/parser/ConfInfo;->isPartialAllowed(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 420
    invoke-direct {p0, v2}, Lorg/codeaurora/ims/parser/ConfInfo;->getKey(Lorg/codeaurora/ims/parser/Element;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 422
    const-string v5, "Key is not null"

    invoke-virtual {p0, v5}, Lorg/codeaurora/ims/parser/ConfInfo;->log(Ljava/lang/String;)V

    .line 423
    invoke-direct {p0, p2, v2, v3}, Lorg/codeaurora/ims/parser/ConfInfo;->getElementIndexOnKeyMatch(Ljava/util/List;Lorg/codeaurora/ims/parser/Element;Ljava/lang/String;)I

    move-result v3

    .line 425
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "updateNotification : HandlePartialNotification elementIndex : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/codeaurora/ims/parser/ConfInfo;->debugLog(Ljava/lang/String;)V

    .line 428
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Old element index Index value: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/codeaurora/ims/parser/ConfInfo;->debugLog(Ljava/lang/String;)V

    .line 429
    invoke-virtual {p0, p2, v4, v2, v3}, Lorg/codeaurora/ims/parser/ConfInfo;->updateNotification(Ljava/util/List;Lorg/codeaurora/ims/parser/Element;Lorg/codeaurora/ims/parser/Element;I)V

    goto/16 :goto_1

    .line 432
    :cond_0
    const-string v3, "key is null"

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/parser/ConfInfo;->log(Ljava/lang/String;)V

    .line 434
    invoke-virtual {v2}, Lorg/codeaurora/ims/parser/Element;->getTagName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    .line 433
    invoke-direct {p0, p2, v3}, Lorg/codeaurora/ims/parser/ConfInfo;->getElementIndexOnTagMatch(Ljava/util/List;Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_1

    .line 436
    const-string v5, "element is not found after doing Index on key match"

    invoke-virtual {p0, v5}, Lorg/codeaurora/ims/parser/ConfInfo;->log(Ljava/lang/String;)V

    .line 438
    invoke-virtual {p0, p2, v4, v2, v3}, Lorg/codeaurora/ims/parser/ConfInfo;->updateNotification(Ljava/util/List;Lorg/codeaurora/ims/parser/Element;Lorg/codeaurora/ims/parser/Element;I)V

    goto :goto_1

    .line 440
    :cond_1
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/codeaurora/ims/parser/Element;

    .line 441
    invoke-virtual {v3}, Lorg/codeaurora/ims/parser/Element;->getSubElementList()Ljava/util/List;

    move-result-object v3

    .line 442
    invoke-virtual {v2}, Lorg/codeaurora/ims/parser/Element;->getSubElementList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_4

    if-eqz v3, :cond_4

    .line 444
    invoke-direct {p0, v2, v3}, Lorg/codeaurora/ims/parser/ConfInfo;->handleNotificationOnSubElements(Ljava/util/List;Ljava/util/List;)V

    goto :goto_1

    .line 448
    :cond_2
    const-string v3, "Tag not valid for Partial Notification"

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/parser/ConfInfo;->log(Ljava/lang/String;)V

    .line 450
    invoke-virtual {v2}, Lorg/codeaurora/ims/parser/Element;->getTagName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    .line 449
    invoke-direct {p0, p2, v3}, Lorg/codeaurora/ims/parser/ConfInfo;->getElementIndexOnTagMatch(Ljava/util/List;Ljava/lang/String;)I

    move-result v3

    .line 451
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "newSubElement Tag Name: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/codeaurora/ims/parser/Element;->getTagName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/codeaurora/ims/parser/ConfInfo;->debugLog(Ljava/lang/String;)V

    if-ltz v3, :cond_3

    .line 453
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/codeaurora/ims/parser/Element;

    .line 454
    invoke-virtual {p0, p2, v4, v2, v3}, Lorg/codeaurora/ims/parser/ConfInfo;->updateNotification(Ljava/util/List;Lorg/codeaurora/ims/parser/Element;Lorg/codeaurora/ims/parser/Element;I)V

    goto :goto_1

    .line 457
    :cond_3
    const-string v4, "May be tags are not at same level checking it by reindexing one level up"

    invoke-virtual {p0, v4}, Lorg/codeaurora/ims/parser/ConfInfo;->log(Ljava/lang/String;)V

    if-eqz p2, :cond_4

    .line 459
    invoke-direct {p0, p2, v2}, Lorg/codeaurora/ims/parser/ConfInfo;->reIndexOldElementList(Ljava/util/List;Lorg/codeaurora/ims/parser/Element;)Ljava/util/List;

    .line 460
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/codeaurora/ims/parser/Element;

    .line 461
    invoke-virtual {p0, p2, v4, v2, v3}, Lorg/codeaurora/ims/parser/ConfInfo;->updateNotification(Ljava/util/List;Lorg/codeaurora/ims/parser/Element;Lorg/codeaurora/ims/parser/Element;I)V

    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_5
    return-void
.end method

.method private isPartialAllowed(Ljava/lang/String;)Z
    .locals 0

    .line 301
    iget-object p0, p0, Lorg/codeaurora/ims/parser/ConfInfo;->allowedPartial:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private preparePartialList()V
    .locals 2

    .line 292
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ConfInfo;->allowedPartial:Ljava/util/ArrayList;

    const-string v1, "conference-info"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 293
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ConfInfo;->allowedPartial:Ljava/util/ArrayList;

    const-string v1, "users"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 294
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ConfInfo;->allowedPartial:Ljava/util/ArrayList;

    const-string v1, "user"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 295
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ConfInfo;->allowedPartial:Ljava/util/ArrayList;

    const-string v1, "endpoint"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 296
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ConfInfo;->allowedPartial:Ljava/util/ArrayList;

    const-string v1, "sidebars-by-val"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 297
    iget-object p0, p0, Lorg/codeaurora/ims/parser/ConfInfo;->allowedPartial:Ljava/util/ArrayList;

    const-string v0, "sidebars-by-ref"

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private reIndexOldElementList(Ljava/util/List;Lorg/codeaurora/ims/parser/Element;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/parser/Element;",
            ">;",
            "Lorg/codeaurora/ims/parser/Element;",
            ")",
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/parser/Element;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    .line 476
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 477
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/parser/Element;

    .line 478
    invoke-virtual {v1}, Lorg/codeaurora/ims/parser/Element;->getTagName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lorg/codeaurora/ims/parser/Element;->getTagName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 479
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "Old Element List item at Index["

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 480
    invoke-virtual {v1}, Lorg/codeaurora/ims/parser/Element;->getTagName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 479
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/parser/ConfInfo;->debugLog(Ljava/lang/String;)V

    .line 481
    invoke-virtual {v1}, Lorg/codeaurora/ims/parser/Element;->getSubElementList()Ljava/util/List;

    move-result-object p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p1

    .line 485
    :cond_2
    const-string p2, "old element list is null"

    invoke-virtual {p0, p2}, Lorg/codeaurora/ims/parser/ConfInfo;->debugLog(Ljava/lang/String;)V

    return-object p1
.end method

.method private setMapAttributeWithDefaultValue()V
    .locals 2

    .line 65
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ConfInfo;->mCachedElement:Lorg/codeaurora/ims/parser/Element;

    invoke-virtual {v0}, Lorg/codeaurora/ims/parser/Element;->setMapAttribute()V

    .line 66
    iget-object p0, p0, Lorg/codeaurora/ims/parser/ConfInfo;->mCachedElement:Lorg/codeaurora/ims/parser/Element;

    invoke-virtual {p0}, Lorg/codeaurora/ims/parser/Element;->getMapAttribute()Ljava/util/Map;

    move-result-object p0

    const-string v0, "version"

    const-string v1, "NotApplicable"

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static setSAXHandler(Lorg/codeaurora/ims/parser/SAXXMLHandler;)V
    .locals 0

    .line 70
    sput-object p0, Lorg/codeaurora/ims/parser/ConfInfo;->sHandler:Lorg/codeaurora/ims/parser/SAXXMLHandler;

    return-void
.end method

.method private updateAttributeList(Lorg/codeaurora/ims/parser/Element;Lorg/codeaurora/ims/parser/Element;)V
    .locals 3

    .line 257
    new-instance p0, Ljava/util/HashSet;

    .line 258
    invoke-virtual {p2}, Lorg/codeaurora/ims/parser/Element;->getMapAttribute()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 259
    invoke-interface {p0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object p0

    const/4 v0, 0x0

    .line 260
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 261
    aget-object v1, p0, v0

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 263
    invoke-virtual {p2, v1}, Lorg/codeaurora/ims/parser/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 262
    invoke-virtual {p1, v1, v2}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public UpdateConfInfoAllElement(Lorg/codeaurora/ims/parser/Element;)V
    .locals 0

    .line 565
    iput-object p1, p0, Lorg/codeaurora/ims/parser/ConfInfo;->mCachedElement:Lorg/codeaurora/ims/parser/Element;

    return-void
.end method

.method public UpdateConfState(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 561
    iget-object p0, p0, Lorg/codeaurora/ims/parser/ConfInfo;->mCachedElement:Lorg/codeaurora/ims/parser/Element;

    invoke-virtual {p0, p1, p2}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public UpdateConfState(Ljava/util/Map;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 557
    const-string p0, "state"

    invoke-interface {p1, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public UpdateLocalVersionNumber(Ljava/util/Map;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 540
    const-string p0, "version"

    invoke-interface {p1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 541
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 542
    invoke-interface {p1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 545
    :cond_0
    invoke-interface {p1, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public clearAndSetDefault()V
    .locals 0

    .line 608
    invoke-virtual {p0}, Lorg/codeaurora/ims/parser/ConfInfo;->dispose()V

    .line 609
    invoke-direct {p0}, Lorg/codeaurora/ims/parser/ConfInfo;->setMapAttributeWithDefaultValue()V

    return-void
.end method

.method protected debugLog(Ljava/lang/String;)V
    .locals 1

    .line 82
    iget-boolean v0, p0, Lorg/codeaurora/ims/parser/ConfInfo;->debug:Z

    if-eqz v0, :cond_0

    .line 83
    iget-object p0, p0, Lorg/codeaurora/ims/parser/ConfInfo;->LOGTAG:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public dispose()V
    .locals 1

    .line 600
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ConfInfo;->mCachedElement:Lorg/codeaurora/ims/parser/Element;

    if-eqz v0, :cond_0

    .line 601
    invoke-virtual {v0}, Lorg/codeaurora/ims/parser/Element;->ClearAll()V

    .line 602
    :cond_0
    invoke-static {}, Lorg/codeaurora/ims/parser/Element;->clearMatchedElementsList()V

    .line 603
    iget-object p0, p0, Lorg/codeaurora/ims/parser/ConfInfo;->mNewElement:Lorg/codeaurora/ims/parser/Element;

    if-eqz p0, :cond_1

    .line 604
    invoke-virtual {p0}, Lorg/codeaurora/ims/parser/Element;->ClearAll()V

    :cond_1
    return-void
.end method

.method public getConfUriList()Landroid/telephony/ims/ImsConferenceState;
    .locals 12

    .line 154
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ConfInfo;->mCachedElement:Lorg/codeaurora/ims/parser/Element;

    if-eqz v0, :cond_1

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mCachedElement reference "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/codeaurora/ims/parser/ConfInfo;->mCachedElement:Lorg/codeaurora/ims/parser/Element;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/parser/ConfInfo;->log(Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ConfInfo;->mCachedElement:Lorg/codeaurora/ims/parser/Element;

    const-string v1, "version"

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/parser/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 157
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "version string is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/parser/ConfInfo;->debugLog(Ljava/lang/String;)V

    if-eqz v0, :cond_2

    .line 158
    const-string v1, "NotApplicable"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 160
    invoke-static {}, Lorg/codeaurora/ims/parser/Element;->clearMatchedElementsList()V

    .line 161
    const-string v0, "users"

    iget-object v1, p0, Lorg/codeaurora/ims/parser/ConfInfo;->mCachedElement:Lorg/codeaurora/ims/parser/Element;

    const-string v2, "user"

    invoke-static {v2, v0, v1}, Lorg/codeaurora/ims/parser/Element;->getMatchedElements(Ljava/lang/String;Ljava/lang/String;Lorg/codeaurora/ims/parser/Element;)Ljava/util/ArrayList;

    move-result-object v0

    .line 163
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 164
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "userlist length in getuserUri = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/parser/ConfInfo;->log(Ljava/lang/String;)V

    .line 165
    new-instance v3, Landroid/telephony/ims/ImsConferenceState;

    invoke-direct {v3}, Landroid/telephony/ims/ImsConferenceState;-><init>()V

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v1, :cond_0

    .line 170
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/codeaurora/ims/parser/Element;

    invoke-direct {p0, v6}, Lorg/codeaurora/ims/parser/ConfInfo;->getParticipantInfoFromElement(Lorg/codeaurora/ims/parser/Element;)[Ljava/lang/String;

    move-result-object v6

    .line 172
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "getConfUriList["

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "] -> userEntity="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, v6, v4

    .line 173
    invoke-static {v8}, Lcom/qualcomm/ims/utils/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", Display Text="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v8, 0x1

    aget-object v9, v6, v8

    .line 174
    invoke-static {v9}, Lcom/qualcomm/ims/utils/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", endPoint="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v9, 0x2

    aget-object v10, v6, v9

    .line 175
    invoke-static {v10}, Lcom/qualcomm/ims/utils/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", status="

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v10, 0x3

    aget-object v11, v6, v10

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 172
    invoke-virtual {p0, v7}, Lorg/codeaurora/ims/parser/ConfInfo;->log(Ljava/lang/String;)V

    .line 180
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 181
    aget-object v11, v6, v4

    invoke-virtual {v7, v2, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    const-string v11, "display-text"

    aget-object v8, v6, v8

    invoke-virtual {v7, v11, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    const-string v8, "endpoint"

    aget-object v9, v6, v9

    invoke-virtual {v7, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    const-string v8, "status"

    aget-object v9, v6, v10

    invoke-virtual {v7, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    iget-object v8, v3, Landroid/telephony/ims/ImsConferenceState;->mParticipants:Ljava/util/HashMap;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v6, v6, v4

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "_"

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_0
    return-object v3

    .line 200
    :cond_1
    const-string v0, "conf_version not valid"

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/parser/ConfInfo;->log(Ljava/lang/String;)V

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public getState(Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 549
    const-string p0, "state"

    invoke-interface {p1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 550
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getUserUriList()[Ljava/lang/String;
    .locals 6

    .line 125
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ConfInfo;->mCachedElement:Lorg/codeaurora/ims/parser/Element;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "mCachedElement reference "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/codeaurora/ims/parser/ConfInfo;->mCachedElement:Lorg/codeaurora/ims/parser/Element;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/parser/ConfInfo;->log(Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ConfInfo;->mCachedElement:Lorg/codeaurora/ims/parser/Element;

    const-string v2, "version"

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/parser/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 128
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "version string is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/parser/ConfInfo;->debugLog(Ljava/lang/String;)V

    if-eqz v0, :cond_1

    .line 129
    const-string v2, "NotApplicable"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 132
    invoke-static {}, Lorg/codeaurora/ims/parser/Element;->clearMatchedElementsList()V

    .line 133
    const-string v0, "users"

    iget-object v1, p0, Lorg/codeaurora/ims/parser/ConfInfo;->mCachedElement:Lorg/codeaurora/ims/parser/Element;

    const-string v2, "user"

    invoke-static {v2, v0, v1}, Lorg/codeaurora/ims/parser/Element;->getMatchedElements(Ljava/lang/String;Ljava/lang/String;Lorg/codeaurora/ims/parser/Element;)Ljava/util/ArrayList;

    move-result-object v0

    .line 135
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 136
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "userlist length in getuserUri = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/parser/ConfInfo;->log(Ljava/lang/String;)V

    .line 137
    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    .line 139
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/codeaurora/ims/parser/Element;

    const-string v5, "entity"

    invoke-virtual {v4, v5}, Lorg/codeaurora/ims/parser/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 141
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Inside getUser URI list"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v5, v2, v3

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/codeaurora/ims/parser/ConfInfo;->log(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v2

    :cond_1
    return-object v1

    .line 145
    :cond_2
    const-string v0, "conf_version not valid"

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/parser/ConfInfo;->log(Ljava/lang/String;)V

    return-object v1
.end method

.method protected log(Ljava/lang/String;)V
    .locals 0

    .line 87
    iget-object p0, p0, Lorg/codeaurora/ims/parser/ConfInfo;->LOGTAG:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public updateConfXmlBytes([B)V
    .locals 3

    .line 74
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 75
    invoke-static {}, Lorg/codeaurora/ims/parser/SAXXMLParser;->getSAXXMLParser()Lorg/codeaurora/ims/parser/SAXXMLParser;

    .line 76
    invoke-static {v0}, Lorg/codeaurora/ims/parser/SAXXMLParser;->parse(Ljava/io/InputStream;)Lorg/codeaurora/ims/parser/Element;

    move-result-object p1

    iput-object p1, p0, Lorg/codeaurora/ims/parser/ConfInfo;->mNewElement:Lorg/codeaurora/ims/parser/Element;

    .line 77
    const-string p1, "*************New Notification*****************"

    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/parser/ConfInfo;->debugLog(Ljava/lang/String;)V

    .line 78
    iget-object p1, p0, Lorg/codeaurora/ims/parser/ConfInfo;->mCachedElement:Lorg/codeaurora/ims/parser/Element;

    iget-object v0, p0, Lorg/codeaurora/ims/parser/ConfInfo;->mNewElement:Lorg/codeaurora/ims/parser/Element;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, p1, v0, v1}, Lorg/codeaurora/ims/parser/ConfInfo;->updateNotification(Ljava/util/List;Lorg/codeaurora/ims/parser/Element;Lorg/codeaurora/ims/parser/Element;I)V

    return-void
.end method

.method protected updateNotification(Ljava/util/List;Lorg/codeaurora/ims/parser/Element;Lorg/codeaurora/ims/parser/Element;I)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/parser/Element;",
            ">;",
            "Lorg/codeaurora/ims/parser/Element;",
            "Lorg/codeaurora/ims/parser/Element;",
            "I)V"
        }
    .end annotation

    const-string v0, "Old Element Tag name: "

    const-string v1, "Partial Notification state is supported to this element"

    const-string v2, "replacing Element with Full state with parentTag"

    const-string v3, "New Element Tag name: "

    .line 318
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "UpdateNotification args OldList: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", OldElement: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", NewElement: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", index = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/codeaurora/ims/parser/ConfInfo;->log(Ljava/lang/String;)V

    .line 320
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "mCachedElement element: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lorg/codeaurora/ims/parser/ConfInfo;->mCachedElement:Lorg/codeaurora/ims/parser/Element;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/codeaurora/ims/parser/ConfInfo;->debugLog(Ljava/lang/String;)V

    .line 322
    :try_start_0
    invoke-direct {p0, p3}, Lorg/codeaurora/ims/parser/ConfInfo;->checkElementState(Lorg/codeaurora/ims/parser/Element;)Ljava/lang/String;

    move-result-object v4

    .line 323
    invoke-virtual {p3}, Lorg/codeaurora/ims/parser/Element;->getTagName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    if-eqz p2, :cond_0

    .line 326
    invoke-virtual {p2}, Lorg/codeaurora/ims/parser/Element;->getTagName()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    :cond_0
    move-object v7, v6

    .line 327
    :goto_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lorg/codeaurora/ims/parser/ConfInfo;->debugLog(Ljava/lang/String;)V

    .line 328
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/parser/ConfInfo;->debugLog(Ljava/lang/String;)V

    .line 332
    const-string v3, "full"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    if-nez p1, :cond_1

    .line 334
    const-string p1, "Root Element is replced with Full state"

    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/parser/ConfInfo;->log(Ljava/lang/String;)V

    .line 335
    iput-object p3, p0, Lorg/codeaurora/ims/parser/ConfInfo;->mCachedElement:Lorg/codeaurora/ims/parser/Element;

    goto/16 :goto_2

    :cond_1
    if-gez p4, :cond_2

    .line 338
    const-string p2, "adding new Element with Full state"

    invoke-virtual {p0, p2}, Lorg/codeaurora/ims/parser/ConfInfo;->debugLog(Ljava/lang/String;)V

    .line 339
    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 341
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 342
    invoke-virtual {p3}, Lorg/codeaurora/ims/parser/Element;->getParentTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " Index :"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 341
    invoke-virtual {p0, p2}, Lorg/codeaurora/ims/parser/ConfInfo;->debugLog(Ljava/lang/String;)V

    .line 343
    invoke-interface {p1, p4, p3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 347
    :cond_3
    const-string v2, "partial"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 348
    const-string v2, "updateNotification: partial state"

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/parser/ConfInfo;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    .line 351
    :try_start_1
    invoke-direct {p0, v5}, Lorg/codeaurora/ims/parser/ConfInfo;->isPartialAllowed(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 352
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/parser/ConfInfo;->debugLog(Ljava/lang/String;)V

    if-nez p2, :cond_5

    if-ltz p4, :cond_4

    goto :goto_1

    .line 375
    :cond_4
    const-string p2, "Partial Notification state, but no old element."

    invoke-virtual {p0, p2}, Lorg/codeaurora/ims/parser/ConfInfo;->debugLog(Ljava/lang/String;)V

    .line 376
    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 355
    :cond_5
    :goto_1
    invoke-virtual {p3}, Lorg/codeaurora/ims/parser/Element;->getSubElementList()Ljava/util/List;

    move-result-object v1

    if-eqz p1, :cond_6

    .line 362
    invoke-interface {p1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object p2, p1

    check-cast p2, Lorg/codeaurora/ims/parser/Element;

    :cond_6
    if-eqz p2, :cond_7

    .line 365
    invoke-virtual {p2}, Lorg/codeaurora/ims/parser/Element;->getSubElementList()Ljava/util/List;

    move-result-object v6

    .line 366
    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/parser/ConfInfo;->debugLog(Ljava/lang/String;)V

    .line 367
    invoke-direct {p0, p2, p3}, Lorg/codeaurora/ims/parser/ConfInfo;->updateAttributeList(Lorg/codeaurora/ims/parser/Element;Lorg/codeaurora/ims/parser/Element;)V

    if-nez v6, :cond_8

    .line 370
    invoke-direct {p0, v6, p3}, Lorg/codeaurora/ims/parser/ConfInfo;->reIndexOldElementList(Ljava/util/List;Lorg/codeaurora/ims/parser/Element;)Ljava/util/List;

    move-result-object v6

    .line 372
    :cond_8
    invoke-direct {p0, v1, v6}, Lorg/codeaurora/ims/parser/ConfInfo;->handleNotificationOnSubElements(Ljava/util/List;Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 380
    :try_start_2
    const-string p2, "Exception in handlePatialNotification "

    invoke-virtual {p0, p2}, Lorg/codeaurora/ims/parser/ConfInfo;->log(Ljava/lang/String;)V

    .line 381
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 383
    :cond_9
    const-string p2, "deleted"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_b

    .line 384
    const-string p2, "updateNotification Deleting Element"

    invoke-virtual {p0, p2}, Lorg/codeaurora/ims/parser/ConfInfo;->log(Ljava/lang/String;)V

    .line 385
    const-string p2, "conference-info"

    invoke-virtual {v5, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_a

    .line 386
    invoke-interface {p1, p4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_2

    .line 388
    :cond_a
    iget-object p1, p0, Lorg/codeaurora/ims/parser/ConfInfo;->mCachedElement:Lorg/codeaurora/ims/parser/Element;

    invoke-virtual {p1}, Lorg/codeaurora/ims/parser/Element;->ClearAll()V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 395
    const-string p2, "Indexout of bound exception in UpdateNotification"

    invoke-virtual {p0, p2}, Lorg/codeaurora/ims/parser/ConfInfo;->log(Ljava/lang/String;)V

    .line 396
    invoke-virtual {p1}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    goto :goto_2

    :catch_2
    move-exception p1

    .line 392
    const-string p2, "Null Pointer Exception in UpdateNotification"

    invoke-virtual {p0, p2}, Lorg/codeaurora/ims/parser/ConfInfo;->log(Ljava/lang/String;)V

    .line 393
    invoke-virtual {p1}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 398
    :cond_b
    :goto_2
    const-string p1, "updateNotification : comming out"

    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/parser/ConfInfo;->log(Ljava/lang/String;)V

    return-void
.end method

.method public validateConfInfoVersion(Lorg/codeaurora/ims/parser/Element;)I
    .locals 2

    .line 522
    iget-object p0, p0, Lorg/codeaurora/ims/parser/ConfInfo;->mCachedElement:Lorg/codeaurora/ims/parser/Element;

    .line 523
    const-string v0, "version"

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/parser/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 522
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .line 524
    invoke-virtual {p1}, Lorg/codeaurora/ims/parser/Element;->getMapAttribute()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 526
    invoke-virtual {p1, v0}, Lorg/codeaurora/ims/parser/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 525
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-le p0, p1, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const/4 p0, 0x3

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method
