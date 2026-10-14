.class public Lorg/codeaurora/ims/parser/Element;
.super Ljava/lang/Object;
.source "Element.java"


# static fields
.field public static final CONF_ASSOCIATED_AORS:Ljava/lang/String; = "associated-aors"

.field public static final CONF_AVIL_MEDIA:Ljava/lang/String; = "available-media"

.field public static final CONF_BY:Ljava/lang/String; = "by"

.field public static final CONF_CALL_ID:Ljava/lang/String; = "call-id"

.field public static final CONF_CALL_INFO:Ljava/lang/String; = "call-info"

.field public static final CONF_DESC:Ljava/lang/String; = "conference-description"

.field public static final CONF_DISC_INFO:Ljava/lang/String; = "disconnection-info"

.field public static final CONF_DISC_METHOD:Ljava/lang/String; = "disconnection-method"

.field public static final CONF_DISPLAY_TEXT:Ljava/lang/String; = "display-text"

.field public static final CONF_ENDPOINT:Ljava/lang/String; = "endpoint"

.field public static final CONF_ENTITY:Ljava/lang/String; = "entity"

.field public static final CONF_ENTRY:Ljava/lang/String; = "entry"

.field public static final CONF_FREE_TEXT:Ljava/lang/String; = "free-text"

.field public static final CONF_FROM_TAG:Ljava/lang/String; = "from-tag"

.field public static final CONF_ID:Ljava/lang/String; = "id"

.field public static final CONF_INFO:Ljava/lang/String; = "conference-info"

.field public static final CONF_JOINING_INFO:Ljava/lang/String; = "joining-info"

.field public static final CONF_JOIN_METHOD:Ljava/lang/String; = "joining-method"

.field public static final CONF_KEYWORDS:Ljava/lang/String; = "keywords"

.field public static final CONF_LANGUAGE:Ljava/lang/String; = "languages"

.field public static final CONF_MAX_COUNT:Ljava/lang/String; = "maximum-user-count"

.field public static final CONF_MEDIA:Ljava/lang/String; = "media"

.field public static final CONF_NA:Ljava/lang/String; = "NotApplicable"

.field public static final CONF_PURPOSE:Ljava/lang/String; = "purpose"

.field public static final CONF_REASON:Ljava/lang/String; = "reason"

.field public static final CONF_REFERRED:Ljava/lang/String; = "refrred"

.field public static final CONF_ROLES:Ljava/lang/String; = "roles"

.field public static final CONF_SIDEBAR_REF:Ljava/lang/String; = "sidebars-by-ref"

.field public static final CONF_SIDEBAR_VALUE:Ljava/lang/String; = "sidebars-by-val"

.field public static final CONF_STATE:Ljava/lang/String; = "state"

.field public static final CONF_STATUS:Ljava/lang/String; = "status"

.field public static final CONF_SUBJECT:Ljava/lang/String; = "subject"

.field public static final CONF_TO_TAG:Ljava/lang/String; = "to-tag"

.field public static final CONF_URI:Ljava/lang/String; = "uri"

.field public static final CONF_URIS:Ljava/lang/String; = "conf_uris"

.field public static final CONF_USER:Ljava/lang/String; = "user"

.field public static final CONF_USERS:Ljava/lang/String; = "users"

.field public static final CONF_VERSION:Ljava/lang/String; = "version"

.field public static final CONF_WHEN:Ljava/lang/String; = "when"

.field public static final HOST_INFO:Ljava/lang/String; = "host-info"

.field private static LOGTAG:Ljava/lang/String; = null

.field public static final STATE_DELETE:Ljava/lang/String; = "deleted"

.field public static final STATE_FULL:Ljava/lang/String; = "full"

.field public static final STATE_INVALID:Ljava/lang/String; = "invalid"

.field public static final STATE_PARTIAL:Ljava/lang/String; = "partial"

.field public static final VICE_DIALOG:Ljava/lang/String; = "dialog"

.field public static final VICE_DIALOG_CALLID:Ljava/lang/String; = "call-id"

.field public static final VICE_DIALOG_DIRECTION:Ljava/lang/String; = "direction"

.field public static final VICE_DIALOG_DURATION:Ljava/lang/String; = "duration"

.field public static final VICE_DIALOG_ID:Ljava/lang/String; = "id"

.field public static final VICE_DIALOG_INFO:Ljava/lang/String; = "dialog-info"

.field public static final VICE_DIALOG_INFO_STATE:Ljava/lang/String; = "state"

.field public static final VICE_DIALOG_LOCAL:Ljava/lang/String; = "local"

.field public static final VICE_DIALOG_LOCAL_IDENTITY:Ljava/lang/String; = "identity"

.field public static final VICE_DIALOG_LOCAL_TAG:Ljava/lang/String; = "local-tag"

.field public static final VICE_DIALOG_REFERRED_BY:Ljava/lang/String; = "referred-by"

.field public static final VICE_DIALOG_REMOTE:Ljava/lang/String; = "remote"

.field public static final VICE_DIALOG_REMOTE_IDENTITY:Ljava/lang/String; = "identity"

.field public static final VICE_DIALOG_REMOTE_TAG:Ljava/lang/String; = "remote-tag"

.field public static final VICE_DIALOG_REPLACES:Ljava/lang/String; = "replaces"

.field public static final VICE_DIALOG_REPLACES_CALLID:Ljava/lang/String; = "call-id"

.field public static final VICE_DIALOG_REPLACES_LOCALTAG:Ljava/lang/String; = "local-tag"

.field public static final VICE_DIALOG_REPLACES_REMOTETAG:Ljava/lang/String; = "remote-tag"

.field public static final VICE_DIALOG_ROUTE_SET:Ljava/lang/String; = "route-set"

.field public static final VICE_DIALOG_ROUTE_SET_HOP:Ljava/lang/String; = "hop"

.field public static final VICE_DIALOG_SA:Ljava/lang/String; = "sa:exclusive"

.field public static final VICE_DIALOG_STATE:Ljava/lang/String; = "state"

.field public static final VICE_DISPLAY:Ljava/lang/String; = "display"

.field public static final VICE_ENTITY:Ljava/lang/String; = "entity"

.field public static final VICE_LOCAL_TARGET:Ljava/lang/String; = "target"

.field public static final VICE_LOCAL_TARGET_PARAM:Ljava/lang/String; = "param"

.field public static final VICE_LOCAL_TARGET_PARAM_NAME:Ljava/lang/String; = "pname"

.field public static final VICE_LOCAL_TARGET_PARAM_VAL:Ljava/lang/String; = "pval"

.field public static final VICE_LOCAL_TARGET_URI:Ljava/lang/String; = "uri"

.field public static final VICE_MEDIA_ATTRI:Ljava/lang/String; = "mediaAttributes"

.field public static final VICE_MEDIA_DIRECTION:Ljava/lang/String; = "mediaDirection"

.field public static final VICE_MEDIA_PORT:Ljava/lang/String; = "port0"

.field public static final VICE_MEDIA_TYPE:Ljava/lang/String; = "mediaType"

.field public static final VICE_NA:Ljava/lang/String; = "NotApplicable"

.field public static final VICE_REMOTE_TARGET:Ljava/lang/String; = "target"

.field public static final VICE_REMOTE_TARGET_PARAM:Ljava/lang/String; = "param"

.field public static final VICE_REMOTE_TARGET_PARAM_NAME:Ljava/lang/String; = "pname"

.field public static final VICE_REMOTE_TARGET_PARAM_VAL:Ljava/lang/String; = "pval"

.field public static final VICE_REMOTE_TARGET_URI:Ljava/lang/String; = "uri"

.field public static final VICE_VERSION:Ljava/lang/String; = "version"

.field public static final VICE_XML:Ljava/lang/String; = "xml"

.field public static final VICE_XML_ENCODING:Ljava/lang/String; = "encoding"

.field public static final VICE_XML_VERSION:Ljava/lang/String; = "version"

.field private static mMatchedElementList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/codeaurora/ims/parser/Element;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAttribute:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mIsUpdateRequire:Z

.field private mParentTag:Ljava/lang/String;

.field private mSubElement:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/parser/Element;",
            ">;"
        }
    .end annotation
.end field

.field private mTagName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/codeaurora/ims/parser/Element;->mMatchedElementList:Ljava/util/ArrayList;

    .line 118
    const-string v0, "Element"

    sput-object v0, Lorg/codeaurora/ims/parser/Element;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 119
    iput-boolean v0, p0, Lorg/codeaurora/ims/parser/Element;->mIsUpdateRequire:Z

    return-void
.end method

.method private CheckForParentTag(Lorg/codeaurora/ims/parser/Element;Ljava/lang/String;)Z
    .locals 2

    .line 185
    iget-object p0, p1, Lorg/codeaurora/ims/parser/Element;->mParentTag:Ljava/lang/String;

    invoke-virtual {p0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 186
    sget-object p0, Lorg/codeaurora/ims/parser/Element;->LOGTAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Parent Tag"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lorg/codeaurora/ims/parser/Element;->mParentTag:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    sget-object p0, Lorg/codeaurora/ims/parser/Element;->LOGTAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Search Parent Tag"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static clearMatchedElementsList()V
    .locals 1

    .line 194
    sget-object v0, Lorg/codeaurora/ims/parser/Element;->mMatchedElementList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public static getMatchedElements(Ljava/lang/String;Ljava/lang/String;Lorg/codeaurora/ims/parser/Element;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/codeaurora/ims/parser/Element;",
            ")",
            "Ljava/util/ArrayList<",
            "Lorg/codeaurora/ims/parser/Element;",
            ">;"
        }
    .end annotation

    if-eqz p2, :cond_4

    .line 200
    invoke-virtual {p2}, Lorg/codeaurora/ims/parser/Element;->getSubElementList()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 201
    iget-object v0, p2, Lorg/codeaurora/ims/parser/Element;->mParentTag:Ljava/lang/String;

    if-eqz v0, :cond_5

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p2, Lorg/codeaurora/ims/parser/Element;->mTagName:Ljava/lang/String;

    .line 202
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 203
    sget-object p0, Lorg/codeaurora/ims/parser/Element;->mMatchedElementList:Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 204
    sget-object p0, Lorg/codeaurora/ims/parser/Element;->LOGTAG:Ljava/lang/String;

    const-string p1, "Single node element added to mMatchedElementList"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 207
    :cond_0
    sget-object v0, Lorg/codeaurora/ims/parser/Element;->LOGTAG:Ljava/lang/String;

    const-string v1, "Sublist not null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 208
    :goto_0
    iget-object v1, p2, Lorg/codeaurora/ims/parser/Element;->mSubElement:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 210
    invoke-virtual {p2}, Lorg/codeaurora/ims/parser/Element;->getSubElementList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/parser/Element;

    .line 211
    iget-object v2, v1, Lorg/codeaurora/ims/parser/Element;->mTagName:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 212
    sget-object v2, Lorg/codeaurora/ims/parser/Element;->mMatchedElementList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 213
    sget-object v1, Lorg/codeaurora/ims/parser/Element;->LOGTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Sub Element "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "added to mMatchedElementList"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 214
    :cond_1
    invoke-virtual {v1}, Lorg/codeaurora/ims/parser/Element;->getMapAttribute()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 215
    invoke-virtual {v1}, Lorg/codeaurora/ims/parser/Element;->getMapAttribute()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 216
    iget-object v2, v1, Lorg/codeaurora/ims/parser/Element;->mParentTag:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 217
    sget-object v2, Lorg/codeaurora/ims/parser/Element;->mMatchedElementList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 219
    :cond_2
    sget-object v1, Lorg/codeaurora/ims/parser/Element;->LOGTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Ignoring sub Element "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "with no match as Parent tag "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 223
    :cond_3
    sget-object v2, Lorg/codeaurora/ims/parser/Element;->LOGTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Recurssive call on index "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    invoke-static {p0, p1, v1}, Lorg/codeaurora/ims/parser/Element;->getMatchedElements(Ljava/lang/String;Ljava/lang/String;Lorg/codeaurora/ims/parser/Element;)Ljava/util/ArrayList;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 229
    :cond_4
    sget-object p0, Lorg/codeaurora/ims/parser/Element;->LOGTAG:Ljava/lang/String;

    const-string p1, "Root element is null"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    :cond_5
    :goto_2
    sget-object p0, Lorg/codeaurora/ims/parser/Element;->mMatchedElementList:Ljava/util/ArrayList;

    return-object p0
.end method


# virtual methods
.method public ClearAll()V
    .locals 2

    const/4 v0, 0x0

    .line 269
    iput-object v0, p0, Lorg/codeaurora/ims/parser/Element;->mTagName:Ljava/lang/String;

    .line 270
    iget-object v1, p0, Lorg/codeaurora/ims/parser/Element;->mAttribute:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 271
    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 272
    :cond_0
    iput-object v0, p0, Lorg/codeaurora/ims/parser/Element;->mAttribute:Ljava/util/Map;

    .line 273
    iget-object v1, p0, Lorg/codeaurora/ims/parser/Element;->mSubElement:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 274
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 275
    :cond_1
    iput-object v0, p0, Lorg/codeaurora/ims/parser/Element;->mSubElement:Ljava/util/List;

    return-void
.end method

.method public DeleteSubElementsFromTree(Lorg/codeaurora/ims/parser/Element;)V
    .locals 1

    .line 256
    iget-object p1, p1, Lorg/codeaurora/ims/parser/Element;->mAttribute:Ljava/util/Map;

    const-string v0, "state"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v0, "deleted"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 257
    invoke-virtual {p0}, Lorg/codeaurora/ims/parser/Element;->ClearAll()V

    :cond_0
    return-void
.end method

.method public Element()V
    .locals 1

    const/4 v0, 0x0

    .line 122
    iput-object v0, p0, Lorg/codeaurora/ims/parser/Element;->mTagName:Ljava/lang/String;

    .line 123
    iput-object v0, p0, Lorg/codeaurora/ims/parser/Element;->mParentTag:Ljava/lang/String;

    .line 124
    iput-object v0, p0, Lorg/codeaurora/ims/parser/Element;->mAttribute:Ljava/util/Map;

    .line 125
    iput-object v0, p0, Lorg/codeaurora/ims/parser/Element;->mSubElement:Ljava/util/List;

    return-void
.end method

.method public IsUpdateRequire()Z
    .locals 0

    .line 311
    iget-boolean p0, p0, Lorg/codeaurora/ims/parser/Element;->mIsUpdateRequire:Z

    return p0
.end method

.method public addSubElement(Lorg/codeaurora/ims/parser/Element;)V
    .locals 0

    .line 173
    iget-object p0, p0, Lorg/codeaurora/ims/parser/Element;->mSubElement:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public compareElements(Lorg/codeaurora/ims/parser/Element;)Z
    .locals 3

    .line 288
    iget-object v0, p1, Lorg/codeaurora/ims/parser/Element;->mTagName:Ljava/lang/String;

    iget-object v1, p0, Lorg/codeaurora/ims/parser/Element;->mTagName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p1, Lorg/codeaurora/ims/parser/Element;->mParentTag:Ljava/lang/String;

    iget-object v2, p0, Lorg/codeaurora/ims/parser/Element;->mParentTag:Ljava/lang/String;

    .line 289
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 290
    iget-object v0, p0, Lorg/codeaurora/ims/parser/Element;->mSubElement:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v2, p1, Lorg/codeaurora/ims/parser/Element;->mSubElement:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 291
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 292
    iget-object v2, p1, Lorg/codeaurora/ims/parser/Element;->mSubElement:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v0, v2, :cond_0

    :goto_0
    if-eqz v0, :cond_0

    .line 295
    iget-object v2, p1, Lorg/codeaurora/ims/parser/Element;->mSubElement:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/codeaurora/ims/parser/Element;

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/parser/Element;->compareElements(Lorg/codeaurora/ims/parser/Element;)Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return v1

    .line 300
    :cond_1
    iget-object p0, p0, Lorg/codeaurora/ims/parser/Element;->mAttribute:Ljava/util/Map;

    const/4 v0, 0x1

    if-eqz p0, :cond_2

    iget-object p1, p1, Lorg/codeaurora/ims/parser/Element;->mAttribute:Ljava/util/Map;

    if-eqz p1, :cond_2

    .line 301
    invoke-interface {p1, p0}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    :cond_2
    return v0

    :cond_3
    return v1
.end method

.method public getAttributeValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    .line 158
    iget-object v0, p0, Lorg/codeaurora/ims/parser/Element;->mAttribute:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    iget-object p0, p0, Lorg/codeaurora/ims/parser/Element;->mAttribute:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getDocVersion()Ljava/lang/String;
    .locals 1

    .line 248
    iget-object p0, p0, Lorg/codeaurora/ims/parser/Element;->mAttribute:Ljava/util/Map;

    const-string v0, "version"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getElementState(Lorg/codeaurora/ims/parser/Element;)Ljava/lang/String;
    .locals 0

    .line 252
    iget-object p0, p1, Lorg/codeaurora/ims/parser/Element;->mAttribute:Ljava/util/Map;

    const-string p1, "state"

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getElementWithKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lorg/codeaurora/ims/parser/Element;",
            ">;"
        }
    .end annotation

    .line 237
    invoke-static {p1, p2, p0}, Lorg/codeaurora/ims/parser/Element;->getMatchedElements(Ljava/lang/String;Ljava/lang/String;Lorg/codeaurora/ims/parser/Element;)Ljava/util/ArrayList;

    move-result-object p0

    .line 238
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 p2, 0x0

    .line 239
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_1

    .line 240
    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/parser/Element;

    iget-object v0, v0, Lorg/codeaurora/ims/parser/Element;->mAttribute:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/parser/Element;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method public getMapAttribute()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 137
    iget-object p0, p0, Lorg/codeaurora/ims/parser/Element;->mAttribute:Ljava/util/Map;

    return-object p0
.end method

.method public getParentTag()Ljava/lang/String;
    .locals 0

    .line 149
    iget-object p0, p0, Lorg/codeaurora/ims/parser/Element;->mParentTag:Ljava/lang/String;

    return-object p0
.end method

.method public getSubElementList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/parser/Element;",
            ">;"
        }
    .end annotation

    .line 169
    iget-object p0, p0, Lorg/codeaurora/ims/parser/Element;->mSubElement:Ljava/util/List;

    return-object p0
.end method

.method public getTagName()Ljava/lang/String;
    .locals 0

    .line 145
    iget-object p0, p0, Lorg/codeaurora/ims/parser/Element;->mTagName:Ljava/lang/String;

    return-object p0
.end method

.method public setAttributValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 165
    iget-object p0, p0, Lorg/codeaurora/ims/parser/Element;->mAttribute:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setMapAttribute()V
    .locals 1

    .line 133
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/parser/Element;->mAttribute:Ljava/util/Map;

    return-void
.end method

.method public setMapAttribute(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 141
    iput-object p1, p0, Lorg/codeaurora/ims/parser/Element;->mAttribute:Ljava/util/Map;

    return-void
.end method

.method public setParentTag(Ljava/lang/String;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lorg/codeaurora/ims/parser/Element;->mParentTag:Ljava/lang/String;

    return-void
.end method

.method public setSubElementList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/parser/Element;",
            ">;)V"
        }
    .end annotation

    .line 181
    iput-object p1, p0, Lorg/codeaurora/ims/parser/Element;->mSubElement:Ljava/util/List;

    return-void
.end method

.method public setTagName(Ljava/lang/String;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lorg/codeaurora/ims/parser/Element;->mTagName:Ljava/lang/String;

    return-void
.end method

.method public updateAttributeValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 177
    iget-object p0, p0, Lorg/codeaurora/ims/parser/Element;->mAttribute:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
