.class public final Lcom/android/systemui/backup/BackupHelperKt;
.super Ljava/lang/Object;
.source "BackupHelper.kt"


# direct methods
.method public static final synthetic access$getPPControlsFile(Landroid/content/Context;)Lkotlin/jvm/functions/Function0;
    .locals 0

    invoke-static {p0}, Lcom/android/systemui/backup/BackupHelperKt;->getPPControlsFile(Landroid/content/Context;)Lkotlin/jvm/functions/Function0;

    move-result-object p0

    return-object p0
.end method

.method private static final getPPControlsFile(Landroid/content/Context;)Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/android/systemui/backup/BackupHelperKt$getPPControlsFile$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/backup/BackupHelperKt$getPPControlsFile$1;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
