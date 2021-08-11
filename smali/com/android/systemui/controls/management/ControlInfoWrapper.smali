.class public final Lcom/android/systemui/controls/management/ControlInfoWrapper;
.super Lcom/android/systemui/controls/management/ElementWrapper;
.source "ControlsModel.kt"

# interfaces
.implements Lcom/android/systemui/controls/ControlInterface;


# instance fields
.field private final component:Landroid/content/ComponentName;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final controlInfo:Lcom/android/systemui/controls/controller/ControlInfo;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private favorite:Z


# direct methods
.method public constructor <init>(Landroid/content/ComponentName;Lcom/android/systemui/controls/controller/ControlInfo;Z)V
    .locals 1
    .param p1    # Landroid/content/ComponentName;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/android/systemui/controls/controller/ControlInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "component"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "controlInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/controls/management/ElementWrapper;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/android/systemui/controls/management/ControlInfoWrapper;->component:Landroid/content/ComponentName;

    iput-object p2, p0, Lcom/android/systemui/controls/management/ControlInfoWrapper;->controlInfo:Lcom/android/systemui/controls/controller/ControlInfo;

    iput-boolean p3, p0, Lcom/android/systemui/controls/management/ControlInfoWrapper;->favorite:Z

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

    instance-of v0, p1, Lcom/android/systemui/controls/management/ControlInfoWrapper;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/systemui/controls/management/ControlInfoWrapper;

    invoke-virtual {p0}, Lcom/android/systemui/controls/management/ControlInfoWrapper;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/systemui/controls/management/ControlInfoWrapper;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/controls/management/ControlInfoWrapper;->controlInfo:Lcom/android/systemui/controls/controller/ControlInfo;

    iget-object v1, p1, Lcom/android/systemui/controls/management/ControlInfoWrapper;->controlInfo:Lcom/android/systemui/controls/controller/ControlInfo;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/controls/management/ControlInfoWrapper;->getFavorite()Z

    move-result p0

    invoke-virtual {p1}, Lcom/android/systemui/controls/management/ControlInfoWrapper;->getFavorite()Z

    move-result p1

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

.method public getComponent()Landroid/content/ComponentName;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/android/systemui/controls/management/ControlInfoWrapper;->component:Landroid/content/ComponentName;

    return-object p0
.end method

.method public getControlId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/android/systemui/controls/management/ControlInfoWrapper;->controlInfo:Lcom/android/systemui/controls/controller/ControlInfo;

    invoke-virtual {p0}, Lcom/android/systemui/controls/controller/ControlInfo;->getControlId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getControlInfo()Lcom/android/systemui/controls/controller/ControlInfo;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/android/systemui/controls/management/ControlInfoWrapper;->controlInfo:Lcom/android/systemui/controls/controller/ControlInfo;

    return-object p0
.end method

.method public getCustomIcon()Landroid/graphics/drawable/Icon;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getDeviceType()I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/controls/management/ControlInfoWrapper;->controlInfo:Lcom/android/systemui/controls/controller/ControlInfo;

    invoke-virtual {p0}, Lcom/android/systemui/controls/controller/ControlInfo;->getDeviceType()I

    move-result p0

    return p0
.end method

.method public getFavorite()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/controls/management/ControlInfoWrapper;->favorite:Z

    return p0
.end method

.method public getRemoved()Z
    .locals 0

    invoke-static {p0}, Lcom/android/systemui/controls/ControlInterface$DefaultImpls;->getRemoved(Lcom/android/systemui/controls/ControlInterface;)Z

    move-result p0

    return p0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/android/systemui/controls/management/ControlInfoWrapper;->controlInfo:Lcom/android/systemui/controls/controller/ControlInfo;

    invoke-virtual {p0}, Lcom/android/systemui/controls/controller/ControlInfo;->getControlSubtitle()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/android/systemui/controls/management/ControlInfoWrapper;->controlInfo:Lcom/android/systemui/controls/controller/ControlInfo;

    invoke-virtual {p0}, Lcom/android/systemui/controls/controller/ControlInfo;->getControlTitle()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    invoke-virtual {p0}, Lcom/android/systemui/controls/management/ControlInfoWrapper;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/android/systemui/controls/management/ControlInfoWrapper;->controlInfo:Lcom/android/systemui/controls/controller/ControlInfo;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/android/systemui/controls/management/ControlInfoWrapper;->getFavorite()Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    :cond_2
    add-int/2addr v0, p0

    return v0
.end method

.method public setFavorite(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/controls/management/ControlInfoWrapper;->favorite:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ControlInfoWrapper(component="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/controls/management/ControlInfoWrapper;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", controlInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/controls/management/ControlInfoWrapper;->controlInfo:Lcom/android/systemui/controls/controller/ControlInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", favorite="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/controls/management/ControlInfoWrapper;->getFavorite()Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
