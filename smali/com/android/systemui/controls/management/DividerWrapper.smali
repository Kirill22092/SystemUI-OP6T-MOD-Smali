.class public final Lcom/android/systemui/controls/management/DividerWrapper;
.super Lcom/android/systemui/controls/management/ElementWrapper;
.source "ControlsModel.kt"


# instance fields
.field private showDivider:Z

.field private showNone:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {p0, v0, v0, v1, v2}, Lcom/android/systemui/controls/management/DividerWrapper;-><init>(ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 1

    const/4 v0, 0x0

    .line 138
    invoke-direct {p0, v0}, Lcom/android/systemui/controls/management/ElementWrapper;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-boolean p1, p0, Lcom/android/systemui/controls/management/DividerWrapper;->showNone:Z

    iput-boolean p2, p0, Lcom/android/systemui/controls/management/DividerWrapper;->showDivider:Z

    return-void
.end method

.method public synthetic constructor <init>(ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    move p1, v0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    move p2, v0

    .line 137
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/controls/management/DividerWrapper;-><init>(ZZ)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/android/systemui/controls/management/DividerWrapper;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/systemui/controls/management/DividerWrapper;

    iget-boolean v0, p0, Lcom/android/systemui/controls/management/DividerWrapper;->showNone:Z

    iget-boolean v1, p1, Lcom/android/systemui/controls/management/DividerWrapper;->showNone:Z

    if-ne v0, v1, :cond_0

    iget-boolean p0, p0, Lcom/android/systemui/controls/management/DividerWrapper;->showDivider:Z

    iget-boolean p1, p1, Lcom/android/systemui/controls/management/DividerWrapper;->showDivider:Z

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final getShowDivider()Z
    .locals 0

    .line 137
    iget-boolean p0, p0, Lcom/android/systemui/controls/management/DividerWrapper;->showDivider:Z

    return p0
.end method

.method public final getShowNone()Z
    .locals 0

    .line 136
    iget-boolean p0, p0, Lcom/android/systemui/controls/management/DividerWrapper;->showNone:Z

    return p0
.end method

.method public hashCode()I
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/controls/management/DividerWrapper;->showNone:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean p0, p0, Lcom/android/systemui/controls/management/DividerWrapper;->showDivider:Z

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    move v1, p0

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public final setShowDivider(Z)V
    .locals 0

    .line 137
    iput-boolean p1, p0, Lcom/android/systemui/controls/management/DividerWrapper;->showDivider:Z

    return-void
.end method

.method public final setShowNone(Z)V
    .locals 0

    .line 136
    iput-boolean p1, p0, Lcom/android/systemui/controls/management/DividerWrapper;->showNone:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DividerWrapper(showNone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/controls/management/DividerWrapper;->showNone:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", showDivider="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/systemui/controls/management/DividerWrapper;->showDivider:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
