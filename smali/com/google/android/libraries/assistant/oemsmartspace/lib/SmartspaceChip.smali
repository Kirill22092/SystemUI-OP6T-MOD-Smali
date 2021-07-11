.class public Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceChip;
.super Ljava/lang/Object;


# instance fields
.field private final chipIntent:Landroid/app/PendingIntent;

.field private final icon:Landroid/graphics/drawable/Drawable;

.field private final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "com.google.android.apps.nexuslauncher.extra.SMARTSPACE_CHIP_TITLE_EXTRA"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceChip;->title:Ljava/lang/String;

    const-string v0, "com.google.android.apps.nexuslauncher.extra.SMARTSPACE_CHIP_PENDING_INTENT_EXTRA"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/app/PendingIntent;

    iput-object p1, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceChip;->chipIntent:Landroid/app/PendingIntent;

    iput-object p2, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceChip;->icon:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public static intentHasChip(Landroid/os/Bundle;)Z
    .locals 1

    const-string v0, "com.google.android.apps.nexuslauncher.extra.SMARTSPACE_CHIP_TITLE_EXTRA"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public getChipIntent()Landroid/app/PendingIntent;
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceChip;->chipIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceChip;->icon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceChip;->title:Ljava/lang/String;

    return-object p0
.end method

.method public hasIcon()Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceChip;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasPendingIntent()Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceChip;->chipIntent:Landroid/app/PendingIntent;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
