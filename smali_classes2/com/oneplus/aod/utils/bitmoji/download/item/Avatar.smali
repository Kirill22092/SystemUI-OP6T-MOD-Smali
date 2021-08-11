.class public final Lcom/oneplus/aod/utils/bitmoji/download/item/Avatar;
.super Ljava/lang/Object;
.source "Avatar.kt"


# instance fields
.field private mNeedsUpdate:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/aod/utils/bitmoji/download/item/Avatar;->mNeedsUpdate:Z

    return-void
.end method


# virtual methods
.method public final isNeedsUpdate()Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/aod/utils/bitmoji/download/item/Avatar;->mNeedsUpdate:Z

    return p0
.end method

.method public final setNeedsUpdate(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/aod/utils/bitmoji/download/item/Avatar;->mNeedsUpdate:Z

    return-void
.end method

.method public final writeToFile(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    const-string v1, "bitmoji_info_prefs"

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-boolean p0, p0, Lcom/oneplus/aod/utils/bitmoji/download/item/Avatar;->mNeedsUpdate:Z

    const-string v0, "avatar"

    invoke-interface {p1, v0, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    return-void
.end method
