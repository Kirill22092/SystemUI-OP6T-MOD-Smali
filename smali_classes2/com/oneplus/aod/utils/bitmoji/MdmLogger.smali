.class public final Lcom/oneplus/aod/utils/bitmoji/MdmLogger;
.super Ljava/lang/Object;
.source "MdmLogger.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/aod/utils/bitmoji/MdmLogger$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMdmLogger.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MdmLogger.kt\ncom/oneplus/aod/utils/bitmoji/MdmLogger\n*L\n1#1,333:1\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/oneplus/aod/utils/bitmoji/MdmLogger$Companion;

.field private static final DEBUG:Z

# The value of this static final field might be set in the static constructor
.field private static final KEY_USE_PREV:Ljava/lang/String; = "day_use"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

# The value of this static final field might be set in the static constructor
.field private static final KEY_USE_START:Ljava/lang/String; = "start_use"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

# The value of this static final field might be set in the static constructor
.field private static final MDM_ALWAYS_ON_DIALOG:Ljava/lang/String; = "always_dialog"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

# The value of this static final field might be set in the static constructor
.field private static final MDM_BITMOJI_PREFS:Ljava/lang/String; = "bitmoji_mdm_prefs"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

# The value of this static final field might be set in the static constructor
.field private static final MDM_CANCEL_DOWNLOAD:Ljava/lang/String; = "notification_cancel"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

# The value of this static final field might be set in the static constructor
.field private static final MDM_DOWNLOAD_BUTTON:Ljava/lang/String; = "download_button"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

# The value of this static final field might be set in the static constructor
.field private static final MDM_DOWNLOAD_PROMPT:Ljava/lang/String; = "download_prompt"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

# The value of this static final field might be set in the static constructor
.field private static final MDM_EVENT_NAME:Ljava/lang/String; = "Bitmoji"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

# The value of this static final field might be set in the static constructor
.field private static final MDM_FIRST_TIME:Ljava/lang/String; = "first_time"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

# The value of this static final field might be set in the static constructor
.field private static final MDM_NETWORK_AFTER:Ljava/lang/String; = "network_after"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

# The value of this static final field might be set in the static constructor
.field private static final MDM_NETWORK_FIRST:Ljava/lang/String; = "network_first"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

# The value of this static final field might be set in the static constructor
.field private static final MDM_NETWORK_OPTION:Ljava/lang/String; = "network_option"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

# The value of this static final field might be set in the static constructor
.field private static final MDM_NOTIFICATION_READY:Ljava/lang/String; = "notification_ready"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

# The value of this static final field might be set in the static constructor
.field private static final MDM_NOTIFICATION_READY_CLICK:Ljava/lang/String; = "notification_ready_click"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

# The value of this static final field might be set in the static constructor
.field private static final MDM_SETUP_BUTTON:Ljava/lang/String; = "setup_button"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

# The value of this static final field might be set in the static constructor
.field private static final MDM_SETUP_PROMPT:Ljava/lang/String; = "setup_prompt"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

# The value of this static final field might be set in the static constructor
.field private static final MDM_SHOW_INTRO:Ljava/lang/String; = "intro_first"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

# The value of this static final field might be set in the static constructor
.field private static final MDM_STICKER_LABEL_PREFIX:Ljava/lang/String; = "sticker_"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

# The value of this static final field might be set in the static constructor
.field private static final MDM_UPDATE:Ljava/lang/String; = "notification_update"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

# The value of this static final field might be set in the static constructor
.field private static final MDM_UPDATE_HOW:Ljava/lang/String; = "update_how"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

# The value of this static final field might be set in the static constructor
.field private static final MDM_USE:Ljava/lang/String; = "use"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

# The value of this static final field might be set in the static constructor
.field private static final MDM_USE_TIME:Ljava/lang/String; = "use_time"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final NO:I = 0x0

.field private static final TAG:Ljava/lang/String; = "BitmojiAod.MdmLogger"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

# The value of this static final field might be set in the static constructor
.field private static final YES:I = 0x1

.field private static sInstance:Lcom/oneplus/aod/utils/bitmoji/MdmLogger;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# instance fields
.field private final context:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/oneplus/aod/utils/bitmoji/MdmLogger$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oneplus/aod/utils/bitmoji/MdmLogger$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oneplus/aod/utils/bitmoji/MdmLogger;->Companion:Lcom/oneplus/aod/utils/bitmoji/MdmLogger$Companion;

    const-string v0, "sys.aod.bitmoji.mdm"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/oneplus/aod/utils/bitmoji/MdmLogger;->DEBUG:Z

    const/4 v0, 0x1

    sput v0, Lcom/oneplus/aod/utils/bitmoji/MdmLogger;->YES:I

    const-string v0, "bitmoji_mdm_prefs"

    sput-object v0, Lcom/oneplus/aod/utils/bitmoji/MdmLogger;->MDM_BITMOJI_PREFS:Ljava/lang/String;

    const-string v0, "Bitmoji"

    sput-object v0, Lcom/oneplus/aod/utils/bitmoji/MdmLogger;->MDM_EVENT_NAME:Ljava/lang/String;

    const-string v0, "sticker_"

    sput-object v0, Lcom/oneplus/aod/utils/bitmoji/MdmLogger;->MDM_STICKER_LABEL_PREFIX:Ljava/lang/String;

    const-string v0, "notification_cancel"

    sput-object v0, Lcom/oneplus/aod/utils/bitmoji/MdmLogger;->MDM_CANCEL_DOWNLOAD:Ljava/lang/String;

    const-string v0, "notification_ready"

    sput-object v0, Lcom/oneplus/aod/utils/bitmoji/MdmLogger;->MDM_NOTIFICATION_READY:Ljava/lang/String;

    const-string v0, "notification_ready_click"

    sput-object v0, Lcom/oneplus/aod/utils/bitmoji/MdmLogger;->MDM_NOTIFICATION_READY_CLICK:Ljava/lang/String;

    const-string v0, "update_how"

    sput-object v0, Lcom/oneplus/aod/utils/bitmoji/MdmLogger;->MDM_UPDATE_HOW:Ljava/lang/String;

    const-string v0, "notification_update"

    sput-object v0, Lcom/oneplus/aod/utils/bitmoji/MdmLogger;->MDM_UPDATE:Ljava/lang/String;

    const-string v0, "network_first"

    sput-object v0, Lcom/oneplus/aod/utils/bitmoji/MdmLogger;->MDM_NETWORK_FIRST:Ljava/lang/String;

    const-string v0, "network_option"

    sput-object v0, Lcom/oneplus/aod/utils/bitmoji/MdmLogger;->MDM_NETWORK_OPTION:Ljava/lang/String;

    const-string v0, "network_after"

    sput-object v0, Lcom/oneplus/aod/utils/bitmoji/MdmLogger;->MDM_NETWORK_AFTER:Ljava/lang/String;

    const-string v0, "intro_first"

    sput-object v0, Lcom/oneplus/aod/utils/bitmoji/MdmLogger;->MDM_SHOW_INTRO:Ljava/lang/String;

    const-string v0, "download_prompt"

    sput-object v0, Lcom/oneplus/aod/utils/bitmoji/MdmLogger;->MDM_DOWNLOAD_PROMPT:Ljava/lang/String;

    const-string v0, "setup_prompt"

    sput-object v0, Lcom/oneplus/aod/utils/bitmoji/MdmLogger;->MDM_SETUP_PROMPT:Ljava/lang/String;

    const-string v0, "download_button"

    sput-object v0, Lcom/oneplus/aod/utils/bitmoji/MdmLogger;->MDM_DOWNLOAD_BUTTON:Ljava/lang/String;

    const-string v0, "setup_button"

    sput-object v0, Lcom/oneplus/aod/utils/bitmoji/MdmLogger;->MDM_SETUP_BUTTON:Ljava/lang/String;

    const-string v0, "always_dialog"

    sput-object v0, Lcom/oneplus/aod/utils/bitmoji/MdmLogger;->MDM_ALWAYS_ON_DIALOG:Ljava/lang/String;

    const-string v0, "use"

    sput-object v0, Lcom/oneplus/aod/utils/bitmoji/MdmLogger;->MDM_USE:Ljava/lang/String;

    const-string v0, "use_time"

    sput-object v0, Lcom/oneplus/aod/utils/bitmoji/MdmLogger;->MDM_USE_TIME:Ljava/lang/String;

    const-string v0, "first_time"

    sput-object v0, Lcom/oneplus/aod/utils/bitmoji/MdmLogger;->MDM_FIRST_TIME:Ljava/lang/String;

    const-string v0, "day_use"

    sput-object v0, Lcom/oneplus/aod/utils/bitmoji/MdmLogger;->KEY_USE_PREV:Ljava/lang/String;

    const-string v0, "start_use"

    sput-object v0, Lcom/oneplus/aod/utils/bitmoji/MdmLogger;->KEY_USE_START:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oneplus/aod/utils/bitmoji/MdmLogger;->context:Landroid/content/Context;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oneplus/aod/utils/bitmoji/MdmLogger;->mLock:Ljava/lang/Object;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/oneplus/aod/utils/bitmoji/MdmLogger;->mMap:Ljava/util/HashMap;

    iget-object p1, p0, Lcom/oneplus/aod/utils/bitmoji/MdmLogger;->context:Landroid/content/Context;

    sget-object v0, Lcom/oneplus/aod/utils/bitmoji/MdmLogger;->MDM_BITMOJI_PREFS:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object p1

    const-string v0, "entries"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "key"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/oneplus/aod/utils/bitmoji/MdmLogger;->skipKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    instance-of v2, v0, Ljava/lang/Integer;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/oneplus/aod/utils/bitmoji/MdmLogger;->mMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/aod/utils/bitmoji/MdmLogger;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static final synthetic access$getSInstance$cp()Lcom/oneplus/aod/utils/bitmoji/MdmLogger;
    .locals 1

    sget-object v0, Lcom/oneplus/aod/utils/bitmoji/MdmLogger;->sInstance:Lcom/oneplus/aod/utils/bitmoji/MdmLogger;

    return-object v0
.end method

.method public static final synthetic access$setSInstance$cp(Lcom/oneplus/aod/utils/bitmoji/MdmLogger;)V
    .locals 0

    sput-object p0, Lcom/oneplus/aod/utils/bitmoji/MdmLogger;->sInstance:Lcom/oneplus/aod/utils/bitmoji/MdmLogger;

    return-void
.end method

.method private final doChecked(Ljava/lang/String;)V
    .locals 2

    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/MdmLogger;->context:Landroid/content/Context;

    sget-object v0, Lcom/oneplus/aod/utils/bitmoji/MdmLogger;->MDM_BITMOJI_PREFS:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const/4 v0, 0x1

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private final doCounterAndSave(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/aod/utils/bitmoji/MdmLogger;->doCounterAndSave(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final doCounterAndSave(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/MdmLogger;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/oneplus/aod/utils/bitmoji/MdmLogger;->context:Landroid/content/Context;

    sget-object v2, Lcom/oneplus/aod/utils/bitmoji/MdmLogger;->MDM_BITMOJI_PREFS:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/aod/utils/bitmoji/MdmLogger;->mMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    instance-of v4, v2, Ljava/lang/Integer;

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    iget-object v4, p0, Lcom/oneplus/aod/utils/bitmoji/MdmLogger;->mMap:Ljava/util/HashMap;

    new-instance v5, Ljava/lang/Integer;

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v5, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v4, p1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v1, p1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    if-eqz p2, :cond_3

    iget-object v4, p0, Lcom/oneplus/aod/utils/bitmoji/MdmLogger;->mMap:Ljava/util/HashMap;

    invoke-virtual {v4, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/oneplus/aod/utils/bitmoji/MdmLogger;->mMap:Ljava/util/HashMap;

    invoke-virtual {v4, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    instance-of v5, v4, Ljava/lang/Integer;

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :cond_1
    add-int/lit8 v4, v3, -0x1

    if-lez v4, :cond_2

    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/MdmLogger;->mMap:Ljava/util/HashMap;

    new-instance v4, Ljava/lang/Integer;

    add-int/lit8 v3, v3, -0x1

    invoke-direct {v4, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, p2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v1, p2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/MdmLogger;->mMap:Ljava/util/HashMap;

    invoke-virtual {p0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v1, p2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_3
    :goto_1
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    sget-boolean p0, Lcom/oneplus/aod/utils/bitmoji/MdmLogger;->DEBUG:Z

    if-eqz p0, :cond_4

    sget-object p0, Lcom/oneplus/aod/utils/bitmoji/MdmLogger;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "event: label= "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", count="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private final get(Ljava/lang/String;)I
    .locals 2

    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/MdmLogger;->context:Landroid/content/Context;

    sget-object v0, Lcom/oneplus/aod/utils/bitmoji/MdmLogger;->MDM_BITMOJI_PREFS:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static final getInstance(Landroid/content/Context;)Lcom/oneplus/aod/utils/bitmoji/MdmLogger;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/oneplus/aod/utils/bitmoji/MdmLogger;->Companion:Lcom/oneplus/aod/utils/bitmoji/MdmLogger$Companion;

    invoke-virtual {v0, p0}, Lcom/oneplus/aod/utils/bitmoji/MdmLogger$Companion;->getInstance(Landroid/content/Context;)Lcom/oneplus/aod/utils/bitmoji/MdmLogger;

    move-result-object p0

    return-object p0
.end method

.method private final log(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget-boolean p0, Lcom/oneplus/aod/utils/bitmoji/MdmLogger;->DEBUG:Z

    if-eqz p0, :cond_0

    sget-object p0, Lcom/oneplus/aod/utils/bitmoji/MdmLogger;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "log: label="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object p0, Lcom/oneplus/aod/utils/bitmoji/MdmLogger;->MDM_EVENT_NAME:Ljava/lang/String;

    invoke-static {p0, p1, p2}, Lcom/oneplus/systemui/util/OpMdmLogger;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final skipKey(Ljava/lang/String;)Z
    .locals 0

    sget-object p0, Lcom/oneplus/aod/utils/bitmoji/MdmLogger;->KEY_USE_PREV:Ljava/lang/String;

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/oneplus/aod/utils/bitmoji/MdmLogger;->KEY_USE_START:Ljava/lang/String;

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/oneplus/aod/utils/bitmoji/MdmLogger;->MDM_FIRST_TIME:Ljava/lang/String;

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    sget-object p0, Lcom/oneplus/aod/utils/bitmoji/MdmLogger;->MDM_SHOW_INTRO:Ljava/lang/String;

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final logCancelDownloadEvent()V
    .locals 1

    sget-object v0, Lcom/oneplus/aod/utils/bitmoji/MdmLogger;->MDM_CANCEL_DOWNLOAD:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/oneplus/aod/utils/bitmoji/MdmLogger;->doCounterAndSave(Ljava/lang/String;)V

    return-void
.end method

.method public final logNetworkOptionChooseEvent(I)V
    .locals 1

    sget-object v0, Lcom/oneplus/aod/utils/bitmoji/MdmLogger;->MDM_NETWORK_OPTION:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/oneplus/aod/utils/bitmoji/MdmLogger;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final logNetworkOptionClickEvent()V
    .locals 1

    sget-object v0, Lcom/oneplus/aod/utils/bitmoji/MdmLogger;->MDM_NETWORK_AFTER:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/oneplus/aod/utils/bitmoji/MdmLogger;->doCounterAndSave(Ljava/lang/String;)V

    return-void
.end method

.method public final logNetworkOptionFirstShownEvent()V
    .locals 1

    sget-object v0, Lcom/oneplus/aod/utils/bitmoji/MdmLogger;->MDM_NETWORK_FIRST:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/oneplus/aod/utils/bitmoji/MdmLogger;->doCounterAndSave(Ljava/lang/String;)V

    return-void
.end method

.method public final logNotificationReadyClickEvent()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/oneplus/aod/utils/bitmoji/MdmLogger;->MDM_NOTIFICATION_READY_CLICK:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget v2, Lcom/oneplus/aod/utils/bitmoji/MdmLogger;->YES:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/oneplus/aod/utils/bitmoji/MdmLogger;->MDM_NOTIFICATION_READY_CLICK:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget v1, Lcom/oneplus/aod/utils/bitmoji/MdmLogger;->NO:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/oneplus/aod/utils/bitmoji/MdmLogger;->doCounterAndSave(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final logNotificationReadyShownEvent()V
    .locals 2

    sget-object v0, Lcom/oneplus/aod/utils/bitmoji/MdmLogger;->MDM_NOTIFICATION_READY:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/oneplus/aod/utils/bitmoji/MdmLogger;->doCounterAndSave(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/oneplus/aod/utils/bitmoji/MdmLogger;->MDM_NOTIFICATION_READY_CLICK:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget v1, Lcom/oneplus/aod/utils/bitmoji/MdmLogger;->NO:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oneplus/aod/utils/bitmoji/MdmLogger;->doCounterAndSave(Ljava/lang/String;)V

    return-void
.end method

.method public final logStickerEvent(Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;)V
    .locals 2
    .param p1    # Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "trigger"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;->getMdmLabel()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/oneplus/aod/utils/bitmoji/MdmLogger;->MDM_STICKER_LABEL_PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/oneplus/aod/utils/bitmoji/MdmLogger;->doCounterAndSave(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final logStickerNeedsUpdateEvent()V
    .locals 1

    sget-object v0, Lcom/oneplus/aod/utils/bitmoji/MdmLogger;->MDM_UPDATE:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/oneplus/aod/utils/bitmoji/MdmLogger;->doCounterAndSave(Ljava/lang/String;)V

    return-void
.end method

.method public final logUpdateStickerEvent(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/oneplus/aod/utils/bitmoji/MdmLogger;->MDM_UPDATE_HOW:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/oneplus/aod/utils/bitmoji/MdmLogger;->doCounterAndSave(Ljava/lang/String;)V

    return-void
.end method

.method public final onOwnerClockChanged()V
    .locals 7

    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/MdmLogger;->context:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oneplus/aod/OpAodUtils;->getCurrentAodClockStyle(Landroid/content/Context;I)I

    move-result v0

    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/MdmLogger;->context:Landroid/content/Context;

    sget-object v2, Lcom/oneplus/aod/utils/bitmoji/MdmLogger;->MDM_BITMOJI_PREFS:Ljava/lang/String;

    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    sget-object v2, Lcom/oneplus/aod/utils/bitmoji/MdmLogger;->KEY_USE_START:Ljava/lang/String;

    const-wide/16 v3, -0x1

    invoke-interface {p0, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    const/16 v2, 0xc

    if-ne v0, v2, :cond_1

    cmp-long p0, v5, v3

    if-nez p0, :cond_0

    sget-object p0, Lcom/oneplus/aod/utils/bitmoji/MdmLogger;->KEY_USE_START:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v1, p0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    sget-boolean p0, Lcom/oneplus/aod/utils/bitmoji/MdmLogger;->DEBUG:Z

    if-eqz p0, :cond_6

    sget-object p0, Lcom/oneplus/aod/utils/bitmoji/MdmLogger;->TAG:Ljava/lang/String;

    const-string v0, "trackClockChanged: choose bitmoji"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    sget-boolean p0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz p0, :cond_6

    sget-object p0, Lcom/oneplus/aod/utils/bitmoji/MdmLogger;->TAG:Ljava/lang/String;

    const-string v0, "onOwnerClockChanged: switch bitmoji invalid"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    cmp-long v0, v5, v3

    if-eqz v0, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v5

    const v0, 0x5265c00

    int-to-long v4, v0

    div-long/2addr v2, v4

    long-to-int v0, v2

    if-gtz v0, :cond_2

    const/4 v0, 0x1

    :cond_2
    sget-object v2, Lcom/oneplus/aod/utils/bitmoji/MdmLogger;->KEY_USE_PREV:Ljava/lang/String;

    const/4 v3, -0x1

    invoke-interface {p0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-le v0, v2, :cond_3

    sget-object v2, Lcom/oneplus/aod/utils/bitmoji/MdmLogger;->KEY_USE_PREV:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    :cond_3
    sget-object v2, Lcom/oneplus/aod/utils/bitmoji/MdmLogger;->MDM_FIRST_TIME:Ljava/lang/String;

    invoke-interface {p0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v3, :cond_4

    sget-object p0, Lcom/oneplus/aod/utils/bitmoji/MdmLogger;->MDM_FIRST_TIME:Ljava/lang/String;

    invoke-interface {v1, p0, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    :cond_4
    sget-object p0, Lcom/oneplus/aod/utils/bitmoji/MdmLogger;->KEY_USE_START:Ljava/lang/String;

    invoke-interface {v1, p0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    sget-boolean p0, Lcom/oneplus/aod/utils/bitmoji/MdmLogger;->DEBUG:Z

    if-eqz p0, :cond_6

    sget-object p0, Lcom/oneplus/aod/utils/bitmoji/MdmLogger;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "trackClockChanged: consistDay= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    sget-boolean p0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz p0, :cond_6

    sget-object p0, Lcom/oneplus/aod/utils/bitmoji/MdmLogger;->TAG:Ljava/lang/String;

    const-string v0, "onOwnerClockChanged: switch other invalid"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_0
    return-void
.end method

.method public final trackFromSettings(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "label"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/oneplus/aod/utils/bitmoji/MdmLogger;->MDM_SHOW_INTRO:Ljava/lang/String;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/oneplus/aod/utils/bitmoji/MdmLogger;->doChecked(Ljava/lang/String;)V

    goto :goto_2

    :cond_0
    sget-object v0, Lcom/oneplus/aod/utils/bitmoji/MdmLogger;->MDM_DOWNLOAD_PROMPT:Ljava/lang/String;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/oneplus/aod/utils/bitmoji/MdmLogger;->MDM_SETUP_PROMPT:Ljava/lang/String;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_0
    invoke-direct {p0, p1}, Lcom/oneplus/aod/utils/bitmoji/MdmLogger;->doCounterAndSave(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    sget-object v0, Lcom/oneplus/aod/utils/bitmoji/MdmLogger;->MDM_DOWNLOAD_BUTTON:Ljava/lang/String;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    sget-object v0, Lcom/oneplus/aod/utils/bitmoji/MdmLogger;->MDM_SETUP_BUTTON:Ljava/lang/String;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    sget-object v0, Lcom/oneplus/aod/utils/bitmoji/MdmLogger;->MDM_ALWAYS_ON_DIALOG:Ljava/lang/String;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :goto_1
    invoke-direct {p0, p1, p2}, Lcom/oneplus/aod/utils/bitmoji/MdmLogger;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_2
    return-void
.end method

.method public final upload()V
    .locals 13

    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/MdmLogger;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/oneplus/aod/utils/bitmoji/MdmLogger;->mMap:Ljava/util/HashMap;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sget-object v6, Lcom/oneplus/aod/utils/bitmoji/MdmLogger;->MDM_UPDATE_HOW:Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x2

    invoke-static {v7, v6, v5, v9, v8}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    sget-object v6, Lcom/oneplus/aod/utils/bitmoji/MdmLogger;->MDM_NOTIFICATION_READY_CLICK:Ljava/lang/String;

    invoke-static {v7, v6, v5, v9, v8}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v7, v3}, Lcom/oneplus/aod/utils/bitmoji/MdmLogger;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    :goto_1
    const-string v6, "@"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x6

    const/4 v12, 0x0

    invoke-static/range {v7 .. v12}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v6

    if-gt v4, v3, :cond_0

    move v7, v4

    :goto_2
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-direct {p0, v8, v9}, Lcom/oneplus/aod/utils/bitmoji/MdmLogger;->log(Ljava/lang/String;Ljava/lang/String;)V

    if-eq v7, v3, :cond_0

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_3
    iget-object v2, p0, Lcom/oneplus/aod/utils/bitmoji/MdmLogger;->context:Landroid/content/Context;

    sget-object v3, Lcom/oneplus/aod/utils/bitmoji/MdmLogger;->MDM_BITMOJI_PREFS:Ljava/lang/String;

    invoke-virtual {v2, v3, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_3

    :cond_4
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v1, p0, Lcom/oneplus/aod/utils/bitmoji/MdmLogger;->mMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    sget-object v0, Lcom/oneplus/aod/utils/bitmoji/MdmLogger;->MDM_SHOW_INTRO:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/oneplus/aod/utils/bitmoji/MdmLogger;->get(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/oneplus/aod/utils/bitmoji/MdmLogger;->log(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/MdmLogger;->context:Landroid/content/Context;

    invoke-static {v0, v5}, Lcom/oneplus/aod/OpAodUtils;->getCurrentAodClockStyle(Landroid/content/Context;I)I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_5

    move v0, v4

    goto :goto_4

    :cond_5
    move v0, v5

    :goto_4
    sget-object v1, Lcom/oneplus/aod/utils/bitmoji/MdmLogger;->MDM_USE:Ljava/lang/String;

    if-eqz v0, :cond_6

    const-string v0, "1"

    goto :goto_5

    :cond_6
    const-string v0, "0"

    :goto_5
    invoke-direct {p0, v1, v0}, Lcom/oneplus/aod/utils/bitmoji/MdmLogger;->log(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/MdmLogger;->context:Landroid/content/Context;

    sget-object v1, Lcom/oneplus/aod/utils/bitmoji/MdmLogger;->MDM_BITMOJI_PREFS:Ljava/lang/String;

    invoke-virtual {v0, v1, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/oneplus/aod/utils/bitmoji/MdmLogger;->KEY_USE_PREV:Ljava/lang/String;

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sget-object v3, Lcom/oneplus/aod/utils/bitmoji/MdmLogger;->KEY_USE_START:Ljava/lang/String;

    const-wide/16 v5, -0x1

    invoke-interface {v0, v3, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    if-eq v1, v2, :cond_7

    sget-object v3, Lcom/oneplus/aod/utils/bitmoji/MdmLogger;->MDM_USE_TIME:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v3, v1}, Lcom/oneplus/aod/utils/bitmoji/MdmLogger;->log(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    sget-object v3, Lcom/oneplus/aod/utils/bitmoji/MdmLogger;->KEY_USE_PREV:Ljava/lang/String;

    invoke-interface {v1, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_7

    :cond_7
    cmp-long v1, v7, v5

    if-eqz v1, :cond_9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v7

    const v1, 0x5265c00

    int-to-long v7, v1

    div-long/2addr v5, v7

    long-to-int v1, v5

    if-gtz v1, :cond_8

    goto :goto_6

    :cond_8
    move v4, v1

    :goto_6
    sget-object v1, Lcom/oneplus/aod/utils/bitmoji/MdmLogger;->MDM_USE_TIME:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lcom/oneplus/aod/utils/bitmoji/MdmLogger;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :cond_9
    :goto_7
    move v4, v2

    :goto_8
    sget-object v1, Lcom/oneplus/aod/utils/bitmoji/MdmLogger;->MDM_FIRST_TIME:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v2, :cond_a

    sget-object v1, Lcom/oneplus/aod/utils/bitmoji/MdmLogger;->MDM_FIRST_TIME:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/oneplus/aod/utils/bitmoji/MdmLogger;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    :cond_a
    if-eq v4, v2, :cond_b

    sget-object v0, Lcom/oneplus/aod/utils/bitmoji/MdmLogger;->MDM_FIRST_TIME:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/oneplus/aod/utils/bitmoji/MdmLogger;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    :goto_9
    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
