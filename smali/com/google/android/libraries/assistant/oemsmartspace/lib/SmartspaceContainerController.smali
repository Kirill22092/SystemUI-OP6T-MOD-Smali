.class public Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;
.super Ljava/lang/Object;


# static fields
.field private static final supportLocaleList:[Ljava/lang/String;


# instance fields
.field private final alarmManager:Landroid/app/AlarmManager;

.field private alarmRegistered:Z

.field private final backgroundHandler:Landroid/os/Handler;

.field private containerView:Landroid/view/ViewGroup;

.field private final context:Landroid/content/Context;

.field private currentUserHandle:Landroid/os/UserHandle;

.field private customizeResourcePackage:Ljava/lang/String;

.field private enableDate:Z

.field private final expireAlarmAction:Landroid/app/AlarmManager$OnAlarmListener;

.field private extraInfo:Landroid/os/Bundle;

.field private volatile hasContents:Z

.field private hideSensitiveData:Z

.field private isSupportedLocale:Z

.field private jarLibVersion:I

.field private final onAttachStateChangeListener:Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController$MyOnAttachStateChangeListener;

.field private receiverList:Ljava/util/List;

.field private final smartspaceData:Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceData;

.field private smartspaceType:Ljava/lang/String;

.field private smartspaceView:Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;

.field private final store:Lcom/google/android/libraries/assistant/oemsmartspace/lib/ProtoStore;

.field private final uiHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 73

    const-string v0, "af"

    const-string v1, "ar"

    const-string v2, "as"

    const-string v3, "az"

    const-string v4, "be"

    const-string v5, "bg"

    const-string v6, "bn"

    const-string v7, "bs"

    const-string v8, "ca"

    const-string v9, "cs"

    const-string v10, "da"

    const-string v11, "de"

    const-string v12, "el"

    const-string v13, "en"

    const-string v14, "es"

    const-string v15, "et"

    const-string v16, "eu"

    const-string v17, "fa"

    const-string v18, "fi"

    const-string v19, "fr"

    const-string v20, "gl"

    const-string v21, "gu"

    const-string v22, "hi"

    const-string v23, "hr"

    const-string v24, "hu"

    const-string v25, "hy"

    const-string v26, "is"

    const-string v27, "it"

    const-string v28, "iw"

    const-string v29, "ja"

    const-string v30, "ka"

    const-string v31, "kk"

    const-string v32, "km"

    const-string v33, "kn"

    const-string v34, "ko"

    const-string v35, "ky"

    const-string v36, "lo"

    const-string v37, "lt"

    const-string v38, "lv"

    const-string v39, "mk"

    const-string v40, "ml"

    const-string v41, "mn"

    const-string v42, "mr"

    const-string v43, "ms"

    const-string v44, "my"

    const-string v45, "ne"

    const-string v46, "nl"

    const-string v47, "pa"

    const-string v48, "pl"

    const-string v49, "pt"

    const-string v50, "ro"

    const-string v51, "ru"

    const-string/jumbo v52, "si"

    const-string/jumbo v53, "sk"

    const-string/jumbo v54, "sl"

    const-string/jumbo v55, "sq"

    const-string/jumbo v56, "sr"

    const-string/jumbo v57, "sv"

    const-string/jumbo v58, "sw"

    const-string/jumbo v59, "ta"

    const-string/jumbo v60, "te"

    const-string/jumbo v61, "th"

    const-string/jumbo v62, "tr"

    const-string/jumbo v63, "uk"

    const-string/jumbo v64, "ur"

    const-string/jumbo v65, "uz"

    const-string/jumbo v66, "vi"

    const-string/jumbo v67, "zh"

    const-string/jumbo v68, "zu"

    const-string v69, "fil"

    const-string v70, "id"

    const-string v71, "no"

    const-string/jumbo v72, "yue"

    filled-new-array/range {v0 .. v72}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->supportLocaleList:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceData;Landroid/os/Handler;Landroid/os/Handler;Lcom/google/android/libraries/assistant/oemsmartspace/lib/ProtoStore;Landroid/app/AlarmManager;Ljava/util/List;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->hasContents:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->customizeResourcePackage:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->enableDate:Z

    const-string v0, "SmartSpaceViewCtrl"

    const-string/jumbo v1, "start client smart space content viewer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->smartspaceData:Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceData;

    iput-object p3, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->uiHandler:Landroid/os/Handler;

    iput-object p4, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->backgroundHandler:Landroid/os/Handler;

    iput-object p5, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->store:Lcom/google/android/libraries/assistant/oemsmartspace/lib/ProtoStore;

    iput-object p6, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->alarmManager:Landroid/app/AlarmManager;

    iput-object p7, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->receiverList:Ljava/util/List;

    new-instance p1, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController$$Lambda$0;

    invoke-direct {p1, p0, p2}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController$$Lambda$0;-><init>(Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceData;)V

    iput-object p1, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->expireAlarmAction:Landroid/app/AlarmManager$OnAlarmListener;

    new-instance p1, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController$MyOnAttachStateChangeListener;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController$MyOnAttachStateChangeListener;-><init>(Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController$1;)V

    iput-object p1, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->onAttachStateChangeListener:Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController$MyOnAttachStateChangeListener;

    return-void
.end method

.method static synthetic access$1000(Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->onDataUpdated()V

    return-void
.end method

.method static synthetic access$1302(Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;Landroid/os/UserHandle;)Landroid/os/UserHandle;
    .locals 0

    iput-object p1, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->currentUserHandle:Landroid/os/UserHandle;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;)Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceData;
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->smartspaceData:Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceData;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->onExpire(Z)V

    return-void
.end method

.method static synthetic access$1600(Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->isSupportedLocale:Z

    return p0
.end method

.method static synthetic access$1602(Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->isSupportedLocale:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;)Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->smartspaceView:Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->requestUiIfContentsEmpty(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->viewAttached()V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->cleanup()V

    return-void
.end method

.method static synthetic access$500(Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->onTimeChange()V

    return-void
.end method

.method static synthetic access$600(Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;Landroid/content/Context;Landroid/content/Intent;[B)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->onReceivedCard(Landroid/content/Context;Landroid/content/Intent;[B)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->onReceiveChip(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->uiHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$900(Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->hasContents:Z

    return p0
.end method

.method static synthetic access$902(Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->hasContents:Z

    return p1
.end method

.method private checkAndUpdateSmartspaceview()V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->updateView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object p0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private cleanup()V
    .locals 5

    const-string v0, "SmartSpaceViewCtrl"

    const-string v1, "clean up the listeners and remove the views"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->receiverList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/BroadcastReceiver;

    :try_start_0
    iget-object v3, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->context:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x28

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "error thrown when unregistering receiver"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->receiverList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-boolean v0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->alarmRegistered:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->alarmManager:Landroid/app/AlarmManager;

    iget-object v2, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->expireAlarmAction:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    iput-boolean v1, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->alarmRegistered:Z

    :cond_1
    iput-boolean v1, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->hasContents:Z

    return-void
.end method

.method public static create(Landroid/content/Context;Landroid/os/Handler;)Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;
    .locals 10

    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "smartspace-background"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v6, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v6, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/app/AlarmManager;

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;

    new-instance v4, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceData;

    invoke-direct {v4}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceData;-><init>()V

    new-instance v7, Lcom/google/android/libraries/assistant/oemsmartspace/lib/ProtoStore;

    invoke-direct {v7, p0}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/ProtoStore;-><init>(Landroid/content/Context;)V

    move-object v2, v0

    move-object v3, p0

    move-object v5, p1

    invoke-direct/range {v2 .. v9}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;-><init>(Landroid/content/Context;Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceData;Landroid/os/Handler;Landroid/os/Handler;Lcom/google/android/libraries/assistant/oemsmartspace/lib/ProtoStore;Landroid/app/AlarmManager;Ljava/util/List;)V

    return-object v0
.end method

.method private static createIconBitmap(Landroid/content/Intent$ShortcutIconResource;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iget-object v0, p0, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p1

    iget-object p0, p0, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    invoke-static {p1, p0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method protected static isLanguageSupported()Z
    .locals 12

    invoke-static {}, Landroid/os/LocaleList;->getDefault()Landroid/os/LocaleList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/LocaleList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    return v2

    :cond_0
    const/4 v1, 0x0

    move v3, v1

    :goto_0
    invoke-virtual {v0}, Landroid/os/LocaleList;->size()I

    move-result v4

    const-string v5, "SmartSpaceViewCtrl"

    if-ge v3, v4, :cond_3

    invoke-virtual {v0, v3}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v4

    sget-object v6, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->supportLocaleList:[Ljava/lang/String;

    array-length v7, v6

    move v8, v1

    :goto_1
    if-ge v8, v7, :cond_2

    aget-object v9, v6, v8

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/util/Locale;

    invoke-direct {v11, v9}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    return v2

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    new-instance v9, Ljava/lang/StringBuilder;

    add-int/lit8 v7, v7, 0x18

    add-int/2addr v7, v8

    invoke-direct {v9, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "Locale "

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "_"

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "is not supported"

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    const-string v0, "All the current Locale % is not supported"

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private loadSmartSpaceData(Z)Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceCard;
    .locals 4

    if-eqz p1, :cond_0

    sget-object v0, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardPriority;->PRIMARY:Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardPriority;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardPriority;->SECONDARY:Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardPriority;

    :goto_0
    invoke-virtual {v0}, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardPriority;->getNumber()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->store:Lcom/google/android/libraries/assistant/oemsmartspace/lib/ProtoStore;

    iget-object p0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->currentUserHandle:Landroid/os/UserHandle;

    invoke-virtual {p0}, Landroid/os/UserHandle;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x17

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v2, "smartspace_"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0, p1}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/ProtoStore;->load(Ljava/lang/String;Z)Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceCard;

    move-result-object p0

    return-object p0
.end method

.method private onDataUpdated()V
    .locals 8

    iget-boolean v0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->alarmRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->alarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->expireAlarmAction:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->alarmRegistered:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->smartspaceData:Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceData;

    invoke-virtual {v0}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceData;->getExpiresAtMillis()J

    move-result-wide v3

    const-wide/16 v0, 0x0

    cmp-long v0, v3, v0

    if-lez v0, :cond_1

    iget-object v1, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->alarmManager:Landroid/app/AlarmManager;

    const/4 v2, 0x0

    iget-object v6, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->expireAlarmAction:Landroid/app/AlarmManager$OnAlarmListener;

    iget-object v7, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->uiHandler:Landroid/os/Handler;

    const-string v5, "SmartSpace"

    invoke-virtual/range {v1 .. v7}, Landroid/app/AlarmManager;->set(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->alarmRegistered:Z

    :cond_1
    iget-object v0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->smartspaceView:Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->checkAndUpdateSmartspaceview()V

    :cond_2
    return-void
.end method

.method private onExpire(Z)V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->alarmRegistered:Z

    if-eqz p1, :cond_0

    const-string p1, "SmartSpaceViewCtrl"

    const-string v0, "onExpire - sent"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->context:Landroid/content/Context;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.systemui.smartspace.EXPIRE_EVENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.google.android.googlequicksearchbox"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    iget-object p1, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->uiHandler:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController$$Lambda$4;

    invoke-direct {v0, p0}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController$$Lambda$4;-><init>(Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private onNewCard(Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;Landroid/graphics/Bitmap;)V
    .locals 6

    const-string v0, "SmartSpaceViewCtrl"

    if-nez p1, :cond_0

    const-string p0, "Smartspace card received is null."

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;->hasShouldDiscard()Z

    move-result v1

    const-string v2, "_"

    const-string/jumbo v3, "smartspace_"

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;->getShouldDiscard()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo p2, "updateView new card"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;->getCardType()Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardType;

    move-result-object p2

    sget-object v0, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardType;->WEATHER:Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardType;

    const/4 v1, 0x0

    if-eq p2, v0, :cond_1

    iget-object p2, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->smartspaceData:Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceData;

    iput-object v1, p2, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceData;->currentCard:Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceCard;

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->smartspaceData:Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceData;

    iput-object v1, p2, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceData;->weatherCard:Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceCard;

    :goto_0
    iget-object p2, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->store:Lcom/google/android/libraries/assistant/oemsmartspace/lib/ProtoStore;

    iget-object p0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->currentUserHandle:Landroid/os/UserHandle;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;->getCardPriority()Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardPriority;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardPriority;->getNumber()I

    move-result p1

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v4, Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x17

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, v1, p0}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/ProtoStore;->store(Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceCard;Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-virtual {p1}, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;->getCardType()Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardType;

    move-result-object v0

    sget-object v1, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardType;->WEATHER:Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardType;

    if-eq v0, v1, :cond_4

    iget-boolean v0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->hideSensitiveData:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->smartspaceData:Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceData;

    new-instance v1, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceCard;

    iget-object v4, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->context:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-direct {v1, v4, p1, v5, p2}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceCard;-><init>(Landroid/content/Context;Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;ZLandroid/graphics/Bitmap;)V

    iput-object v1, v0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceData;->currentCard:Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceCard;

    iget-object p2, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->store:Lcom/google/android/libraries/assistant/oemsmartspace/lib/ProtoStore;

    iget-object v0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->smartspaceData:Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceData;

    iget-object v0, v0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceData;->currentCard:Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceCard;

    iget-object p0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->currentUserHandle:Landroid/os/UserHandle;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;->getCardPriority()Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardPriority;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardPriority;->getNumber()I

    move-result p1

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v4, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x17

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, v0, p0}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/ProtoStore;->store(Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceCard;Ljava/lang/String;)V

    :cond_3
    return-void

    :cond_4
    iget-object v0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->smartspaceData:Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceData;

    new-instance v1, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceCard;

    iget-object v4, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->context:Landroid/content/Context;

    const/4 v5, 0x1

    invoke-direct {v1, v4, p1, v5, p2}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceCard;-><init>(Landroid/content/Context;Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;ZLandroid/graphics/Bitmap;)V

    iput-object v1, v0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceData;->weatherCard:Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceCard;

    iget-object p2, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->store:Lcom/google/android/libraries/assistant/oemsmartspace/lib/ProtoStore;

    iget-object v0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->smartspaceData:Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceData;

    iget-object v0, v0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceData;->weatherCard:Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceCard;

    iget-object p0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->currentUserHandle:Landroid/os/UserHandle;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;->getCardPriority()Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardPriority;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardPriority;->getNumber()I

    move-result p1

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v4, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x17

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, v0, p0}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/ProtoStore;->store(Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceCard;Ljava/lang/String;)V

    return-void
.end method

.method private onReceiveChip(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string v0, "com.google.android.apps.nexuslauncher.extra.FIRST_SMARTSPACE_CHIP"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.google.android.apps.nexuslauncher.extra.SECOND_SMARTSPACE_CHIP"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    iget-object v1, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->backgroundHandler:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController$$Lambda$6;

    invoke-direct {v2, p0, p1, v0, p2}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController$$Lambda$6;-><init>(Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Bundle;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private onReceivedCard(Landroid/content/Context;Landroid/content/Intent;[B)V
    .locals 7

    const-string v0, "SmartSpaceViewCtrl"

    invoke-static {}, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate;->newBuilder()Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$Builder;

    move-result-object v1

    :try_start_0
    invoke-virtual {v1, p3}, Lcom/google/protobuf/AbstractMessageLite$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    check-cast v1, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$Builder;

    invoke-virtual {v1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p3

    check-cast p3, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate;

    invoke-virtual {p3}, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate;->getCardList()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;

    invoke-virtual {v1}, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;->getCardPriority()Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardPriority;

    move-result-object v2

    sget-object v3, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardPriority;->PRIMARY:Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardPriority;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v2, v3, :cond_0

    move v2, v4

    goto :goto_1

    :cond_0
    move v2, v5

    :goto_1
    invoke-virtual {v1}, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;->getCardPriority()Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardPriority;

    move-result-object v3

    sget-object v6, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardPriority;->SECONDARY:Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardPriority;

    if-ne v3, v6, :cond_1

    goto :goto_2

    :cond_1
    move v4, v5

    :goto_2
    if-nez v2, :cond_3

    if-eqz v4, :cond_2

    goto :goto_3

    :cond_2
    const-string/jumbo v1, "unrecognized card priority"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    :goto_3
    iget-object v2, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->backgroundHandler:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController$$Lambda$7;

    invoke-direct {v3, p0, p1, v1, p2}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController$$Lambda$7;-><init>(Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;Landroid/content/Context;Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;Landroid/content/Intent;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_4
    return-void

    :catch_0
    move-exception p0

    const-string p1, "proto"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private onTimeChange()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->smartspaceData:Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceData;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceData;->hasCurrent()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->smartspaceData:Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceData;

    invoke-virtual {v0}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceData;->getExpirationRemainingMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController$$Lambda$5;

    invoke-direct {v1, p0}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController$$Lambda$5;-><init>(Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private processExtraInformation(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "com.google.android.apps.oemsmartspace.JAR_LIB_VERSION_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->jarLibVersion:I

    const-string v0, "com.google.android.apps.oemsmartspace.SMARTSPACE_TYPE_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->smartspaceType:Ljava/lang/String;

    const-string v0, "com.google.android.apps.oemsmartspace.SMARTSPACE_ENABLE_DATE_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->enableDate:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->smartspaceType:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Setup client library, type: "

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    const-string v1, "SmartSpaceViewCtrl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController$$Lambda$2;

    invoke-direct {v1, p0, p1}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController$$Lambda$2;-><init>(Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private processTextStyle(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->smartspaceView:Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;

    if-nez v0, :cond_0

    const-string p0, "SmartSpaceViewCtrl"

    const-string p1, "SmartspaceView is not initialized yet, call setView first."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, "com.google.android.apps.oemsmartspace.SMARTSPACE_ENABLE_DATE_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->smartspaceView:Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->enableDate(Z)V

    :cond_1
    const-string v0, "com.google.android.apps.oemsmartspace.SMARTSPACE_ENABLE_WEATHER_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->smartspaceView:Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->enableWeather(Z)V

    :cond_2
    const-string v0, "com.google.android.apps.oemsmartspace.TEXT_COLOR_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->smartspaceView:Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->setColor(I)V

    :cond_3
    const-string v0, "com.google.android.apps.oemsmartspace.TEXT_FONT_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->smartspaceView:Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->setFont(Ljava/lang/String;)V

    :cond_4
    const-string v0, "com.google.android.apps.oemsmartspace.SMARTSPACE_RESOURCE_PACKAGE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->customizeResourcePackage:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->smartspaceView:Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->setResource(Ljava/lang/String;)V

    :cond_5
    const-string v0, "com.google.android.apps.oemsmartspace.SMARTSPACE_SET_LEFT_ALIGNED_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->smartspaceView:Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;

    invoke-virtual {v1, v0}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->setLeftAligned(Z)V

    :cond_6
    const-string v0, "com.google.android.apps.oemsmartspace.SMARTSPACE_TEXT_SIZE_FACTOR_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->smartspaceView:Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result p1

    invoke-virtual {v1, p1}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->setTextSizeFactor(F)V

    :cond_7
    iget-object p1, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->smartspaceView:Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;

    iget-object p0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->smartspaceData:Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceData;

    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->onSmartspaceUpdated(Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceData;Z)Landroid/view/View;

    return-void
.end method

.method private registerCardExpireListeners()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v1, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController$DeviceStateChangeReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController$DeviceStateChangeReceiver;-><init>(Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController$1;)V

    iget-object v2, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->context:Landroid/content/Context;

    invoke-virtual {v2, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->receiverList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_DATA_CLEARED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    const-string v1, "com.google.android.googlequicksearchbox"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    new-instance v1, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController$1;

    invoke-direct {v1, p0}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController$1;-><init>(Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;)V

    iget-object v2, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->context:Landroid/content/Context;

    invoke-virtual {v2, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->receiverList:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private requestUiIfContentsEmpty(Z)V
    .locals 6

    iget-boolean v0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->hasContents:Z

    const-string v1, "SmartSpaceViewCtrl"

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    const-string p0, "already has contents, no need to request again"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p1, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->context:Landroid/content/Context;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/4 v2, 0x0

    const/high16 v3, 0xc000000

    invoke-static {p1, v2, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.google.android.apps.oemsmartspace.ENABLE_UPDATE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.google.android.googlequicksearchbox"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->smartspaceType:Ljava/lang/String;

    const-string v3, "com.google.android.apps.oemsmartspace.SMARTSPACE_TYPE_KEY"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v2, "com.google.android.apps.oemsmartspace.extra.VERIFICATION_KEY"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    iget v2, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->jarLibVersion:I

    const-string v3, "com.google.android.apps.oemsmartspace.JAR_LIB_VERSION_KEY"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    iget-boolean v2, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->enableDate:Z

    const-string v3, "com.google.android.apps.oemsmartspace.SMARTSPACE_ENABLE_DATE_KEY"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    iget-boolean v2, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->hideSensitiveData:Z

    const-string v3, "com.google.android.apps.oemsmartspace.HIDE_PERSONAL_NOTIFICATION"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->customizeResourcePackage:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->customizeResourcePackage:Ljava/lang/String;

    const-string v3, "com.google.android.apps.oemsmartspace.SMARTSPACE_RESOURCE_PACKAGE"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    iget-object v2, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->smartspaceType:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x45

    add-int/2addr v3, v4

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Register package for smartspace update\nsmartspaceType: "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\npackage name:"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->context:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    invoke-direct {p0}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->restoreData()V

    return-void
.end method

.method private restoreData()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->backgroundHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController$$Lambda$3;

    invoke-direct {v1, p0}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController$$Lambda$3;-><init>(Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static retrieveChipIcon(Landroid/content/Context;Landroid/os/Bundle;)Landroid/graphics/drawable/Drawable;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const-string v1, "com.google.android.apps.nexuslauncher.extra.SMARTSPACE_CHIP_ICON_URI_EXTRA"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v0

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/graphics/ImageDecoder;->createSource(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/ImageDecoder$Source;

    move-result-object p0

    invoke-static {p0}, Landroid/graphics/ImageDecoder;->decodeDrawable(Landroid/graphics/ImageDecoder$Source;)Landroid/graphics/drawable/Drawable;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "SmartSpaceViewCtrl"

    const-string v1, "Could not retrieve image"

    invoke-static {p1, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method private static retrieveIcon(Landroid/content/Context;Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;Landroid/content/Intent;)Landroid/graphics/Bitmap;
    .locals 3

    if-eqz p2, :cond_0

    const-string v0, "com.google.android.apps.nexuslauncher.extra.SMARTSPACE_ICON"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/graphics/Bitmap;

    if-eqz p2, :cond_0

    return-object p2

    :cond_0
    invoke-virtual {p1}, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;->getIcon()Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Image;

    move-result-object p1

    :try_start_0
    invoke-virtual {p1}, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Image;->getUri()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    invoke-virtual {p1}, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Image;->getUri()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p2}, Landroid/provider/MediaStore$Images$Media;->getBitmap(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p1}, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Image;->getGsaResourceName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_2

    new-instance p2, Landroid/content/Intent$ShortcutIconResource;

    invoke-direct {p2}, Landroid/content/Intent$ShortcutIconResource;-><init>()V

    const-string v0, "com.google.android.googlequicksearchbox"

    iput-object v0, p2, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Image;->getGsaResourceName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    invoke-static {p2, p0}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->createIconBitmap(Landroid/content/Intent$ShortcutIconResource;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p1}, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Image;->getUri()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Image;->getGsaResourceName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x25

    add-int/2addr v0, v1

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "retrieving bitmap failed uri="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " gsaRes="

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SmartSpaceViewCtrl"

    invoke-static {p2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private updateChips(Landroid/os/Bundle;Landroid/os/Bundle;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-direct {p0, p1, p3}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->updateFirstChip(Landroid/os/Bundle;Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0, p2, p4}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->updateSecondChip(Landroid/os/Bundle;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private updateFirstChip(Landroid/os/Bundle;Landroid/graphics/drawable/Drawable;)V
    .locals 2

    if-eqz p1, :cond_1

    invoke-static {p1}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceChip;->intentHasChip(Landroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "SmartSpaceViewCtrl"

    const-string v1, "Updating first chip"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->smartspaceData:Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceData;

    new-instance v0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceChip;

    invoke-direct {v0, p1, p2}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceChip;-><init>(Landroid/os/Bundle;Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceData;->firstChip:Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceChip;

    return-void

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->smartspaceData:Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceData;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceData;->firstChip:Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceChip;

    return-void
.end method

.method private updateSecondChip(Landroid/os/Bundle;Landroid/graphics/drawable/Drawable;)V
    .locals 2

    if-eqz p1, :cond_1

    invoke-static {p1}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceChip;->intentHasChip(Landroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "SmartSpaceViewCtrl"

    const-string v1, "Updating second chip"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->smartspaceData:Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceData;

    new-instance v0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceChip;

    invoke-direct {v0, p1, p2}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceChip;-><init>(Landroid/os/Bundle;Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceData;->secondChip:Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceChip;

    return-void

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->smartspaceData:Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceData;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceData;->secondChip:Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceChip;

    return-void
.end method

.method private updateView()Landroid/view/View;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->smartspaceView:Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->smartspaceData:Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceData;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->onSmartspaceUpdated(Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceData;Z)Landroid/view/View;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x34

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Cannot updateView because the SmartspaceView is null"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SmartSpaceViewCtrl"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method private viewAttached()V
    .locals 5

    iget-boolean v0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->hasContents:Z

    const-string v1, "SmartSpaceViewCtrl"

    if-eqz v0, :cond_0

    const-string p0, "register setup complete. Skip to avoid duplicate"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->receiverList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "receiverList is not empty, clean up first to avoid duplicate"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->cleanup()V

    :cond_1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v1, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController$GeneralBroadcastReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController$GeneralBroadcastReceiver;-><init>(Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController$1;)V

    iget-object v3, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->context:Landroid/content/Context;

    invoke-virtual {v3, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->receiverList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->registerCardExpireListeners()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.google.android.apps.nexuslauncher.UPDATE_SMARTSPACE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v1, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController$SmartSpaceBroadcastReceiver;

    invoke-direct {v1, p0, v2}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController$SmartSpaceBroadcastReceiver;-><init>(Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController$1;)V

    iget-object v2, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->uiHandler:Landroid/os/Handler;

    const-string v4, "android.permission.CAPTURE_AUDIO_HOTWORD"

    invoke-virtual {v2, v1, v0, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->receiverList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->refresh()V

    return-void
.end method


# virtual methods
.method final bridge synthetic bridge$lambda$0$SmartspaceContainerController()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->onDataUpdated()V

    return-void
.end method

.method final bridge synthetic bridge$lambda$1$SmartspaceContainerController()Landroid/view/View;
    .locals 0

    invoke-direct {p0}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->updateView()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method final bridge synthetic bridge$lambda$2$SmartspaceContainerController()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->checkAndUpdateSmartspaceview()V

    return-void
.end method

.method final synthetic lambda$new$0$SmartspaceContainerController(Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceData;)V
    .locals 0

    invoke-virtual {p1}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceData;->handleExpire()Z

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->onExpire(Z)V

    return-void
.end method

.method final synthetic lambda$onReceiveChip$4$SmartspaceContainerController(Landroid/os/Bundle;Landroid/os/Bundle;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->updateChips(Landroid/os/Bundle;Landroid/os/Bundle;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method final synthetic lambda$onReceiveChip$5$SmartspaceContainerController(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 7

    invoke-static {p1, p2}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->retrieveChipIcon(Landroid/content/Context;Landroid/os/Bundle;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-static {p1, p3}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->retrieveChipIcon(Landroid/content/Context;Landroid/os/Bundle;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iget-object p1, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->uiHandler:Landroid/os/Handler;

    new-instance v6, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController$$Lambda$8;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController$$Lambda$8;-><init>(Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;Landroid/os/Bundle;Landroid/os/Bundle;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method final synthetic lambda$onReceivedCard$6$SmartspaceContainerController(Landroid/content/Context;Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;Landroid/content/Intent;)V
    .locals 0

    invoke-static {p1, p2, p3}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->retrieveIcon(Landroid/content/Context;Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;Landroid/content/Intent;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->onNewCard(Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method final synthetic lambda$processExtraInformation$2$SmartspaceContainerController(Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->processTextStyle(Landroid/os/Bundle;)V

    return-void
.end method

.method final synthetic lambda$refresh$1$SmartspaceContainerController()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->extraInfo:Landroid/os/Bundle;

    invoke-direct {p0, v0}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->processExtraInformation(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->requestUiIfContentsEmpty(Z)V

    return-void
.end method

.method final synthetic lambda$restoreData$3$SmartspaceContainerController()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->smartspaceData:Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceData;

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->loadSmartSpaceData(Z)Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceCard;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceData;->weatherCard:Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceCard;

    iget-object v0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->smartspaceView:Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController$$Lambda$9;

    invoke-direct {v1, p0}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController$$Lambda$9;-><init>(Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public refresh()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->containerView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->smartspaceView:Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->backgroundHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController$$Lambda$1;

    invoke-direct {v1, p0}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController$$Lambda$1;-><init>(Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_1
    :goto_0
    const-string p0, "SmartSpaceViewCtrl"

    const-string v0, "containerView is null, please setView first!"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setHideSensitiveData(Z)V
    .locals 5

    iget-boolean v0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->hideSensitiveData:Z

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->hideSensitiveData:Z

    iget-object v0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->context:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const/4 v2, 0x0

    const/high16 v3, 0xc000000

    invoke-static {v0, v2, v1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.android.apps.oemsmartspace.ENABLE_UPDATE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.google.android.googlequicksearchbox"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.google.android.apps.oemsmartspace.extra.VERIFICATION_KEY"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    iget v1, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->jarLibVersion:I

    const-string v2, "com.google.android.apps.oemsmartspace.JAR_LIB_VERSION_KEY"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.google.android.apps.oemsmartspace.HIDE_PERSONAL_NOTIFICATION"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->smartspaceData:Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceData;

    invoke-virtual {p1}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceData;->hasCurrent()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->smartspaceData:Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceData;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceData;->currentCard:Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceCard;

    iget-object p1, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->store:Lcom/google/android/libraries/assistant/oemsmartspace/lib/ProtoStore;

    iget-object v1, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->currentUserHandle:Landroid/os/UserHandle;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardPriority;->PRIMARY:Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardPriority;

    invoke-virtual {v2}, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardPriority;->getNumber()I

    move-result v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x17

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v3, "smartspace_"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/ProtoStore;->store(Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceCard;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->onDataUpdated()V

    :cond_1
    return-void

    :cond_2
    iget-object p1, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->smartspaceData:Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceData;

    invoke-virtual {p1}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceData;->hasCurrent()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-direct {p0}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->onDataUpdated()V

    return-void

    :cond_3
    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->onExpire(Z)V

    return-void
.end method

.method public setStyle(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->extraInfo:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->refresh()V

    :cond_0
    return-void
.end method

.method protected setView(Landroid/view/ViewGroup;Landroid/os/Bundle;Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;)V
    .locals 2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    :goto_0
    iput-object p2, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->extraInfo:Landroid/os/Bundle;

    iget-object p2, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->extraInfo:Landroid/os/Bundle;

    const/4 v0, 0x1

    const-string v1, "com.google.android.apps.oemsmartspace.JAR_LIB_VERSION_KEY"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-static {}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->isLanguageSupported()Z

    move-result p2

    iput-boolean p2, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->isSupportedLocale:Z

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->currentUserHandle:Landroid/os/UserHandle;

    iput-object p3, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->smartspaceView:Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;

    iget-boolean p2, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->isSupportedLocale:Z

    invoke-virtual {p3, p2}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->setLanguageSupported(Z)V

    iput-object p1, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->containerView:Landroid/view/ViewGroup;

    iget-object p2, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->onAttachStateChangeListener:Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController$MyOnAttachStateChangeListener;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    invoke-virtual {p1}, Landroid/view/ViewGroup;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->viewAttached()V

    :cond_1
    return-void
.end method

.method public setView(Landroid/view/ViewGroup;Landroid/os/Bundle;Lcom/google/android/libraries/assistant/oemsmartspace/shared/SmartspaceUpdateListener;)V
    .locals 2

    new-instance v0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;

    iget-object v1, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->context:Landroid/content/Context;

    invoke-direct {v0, v1, p3}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;-><init>(Landroid/content/Context;Lcom/google/android/libraries/assistant/oemsmartspace/shared/SmartspaceUpdateListener;)V

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->setView(Landroid/view/ViewGroup;Landroid/os/Bundle;Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;)V

    return-void
.end method

.method public unsetView()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->containerView:Landroid/view/ViewGroup;

    const-string v1, "SmartSpaceViewCtrl"

    if-eqz v0, :cond_0

    const-string v0, "Clean up content views"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->containerView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->onAttachStateChangeListener:Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController$MyOnAttachStateChangeListener;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :cond_0
    const-string v0, "Clean up SmartspaceViews and unregister the listeners"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->cleanup()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->smartspaceView:Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;

    iget-object p0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->smartspaceData:Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceData;

    invoke-virtual {p0}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceData;->clear()V

    return-void
.end method
