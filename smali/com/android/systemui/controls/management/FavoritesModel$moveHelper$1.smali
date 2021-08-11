.class public final Lcom/android/systemui/controls/management/FavoritesModel$moveHelper$1;
.super Ljava/lang/Object;
.source "FavoritesModel.kt"

# interfaces
.implements Lcom/android/systemui/controls/management/ControlsModel$MoveHelper;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/controls/management/FavoritesModel;-><init>(Landroid/content/ComponentName;Ljava/util/List;Lcom/android/systemui/controls/management/FavoritesModel$FavoritesModelCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/controls/management/FavoritesModel;


# direct methods
.method constructor <init>(Lcom/android/systemui/controls/management/FavoritesModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/controls/management/FavoritesModel$moveHelper$1;->this$0:Lcom/android/systemui/controls/management/FavoritesModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canMoveAfter(I)Z
    .locals 1

    const/4 v0, 0x1

    if-ltz p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/controls/management/FavoritesModel$moveHelper$1;->this$0:Lcom/android/systemui/controls/management/FavoritesModel;

    invoke-static {p0}, Lcom/android/systemui/controls/management/FavoritesModel;->access$getDividerPosition$p(Lcom/android/systemui/controls/management/FavoritesModel;)I

    move-result p0

    sub-int/2addr p0, v0

    if-ge p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public canMoveBefore(I)Z
    .locals 0

    if-lez p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/controls/management/FavoritesModel$moveHelper$1;->this$0:Lcom/android/systemui/controls/management/FavoritesModel;

    invoke-static {p0}, Lcom/android/systemui/controls/management/FavoritesModel;->access$getDividerPosition$p(Lcom/android/systemui/controls/management/FavoritesModel;)I

    move-result p0

    if-ge p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public moveAfter(I)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/systemui/controls/management/FavoritesModel$moveHelper$1;->canMoveAfter(I)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot move position "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " after"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FavoritesModel"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/controls/management/FavoritesModel$moveHelper$1;->this$0:Lcom/android/systemui/controls/management/FavoritesModel;

    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/controls/management/FavoritesModel;->onMoveItem(II)V

    :goto_0
    return-void
.end method

.method public moveBefore(I)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/systemui/controls/management/FavoritesModel$moveHelper$1;->canMoveBefore(I)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot move position "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " before"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FavoritesModel"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/controls/management/FavoritesModel$moveHelper$1;->this$0:Lcom/android/systemui/controls/management/FavoritesModel;

    add-int/lit8 v0, p1, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/controls/management/FavoritesModel;->onMoveItem(II)V

    :goto_0
    return-void
.end method
