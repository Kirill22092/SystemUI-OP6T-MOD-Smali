.class public Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;
.super Ljava/lang/Object;
.source "AnimationFilter.java"


# instance fields
.field animateAlpha:Z

.field animateDimmed:Z

.field animateHeight:Z

.field animateHideSensitive:Z

.field animateTopInset:Z

.field animateX:Z

.field animateY:Z

.field animateYViews:Landroidx/collection/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArraySet<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field animateZ:Z

.field customDelay:J

.field hasDelays:Z

.field hasGoToFullShadeEvent:Z

.field private mAnimatedProperties:Landroidx/collection/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArraySet<",
            "Landroid/util/Property;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Landroidx/collection/ArraySet;

    invoke-direct {v0}, Landroidx/collection/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateYViews:Landroidx/collection/ArraySet;

    .line 43
    new-instance v0, Landroidx/collection/ArraySet;

    invoke-direct {v0}, Landroidx/collection/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->mAnimatedProperties:Landroidx/collection/ArraySet;

    return-void
.end method


# virtual methods
.method public animate(Landroid/util/Property;)Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->mAnimatedProperties:Landroidx/collection/ArraySet;

    invoke-virtual {v0, p1}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public animateAlpha()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;
    .locals 1

    const/4 v0, 0x1

    .line 46
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateAlpha:Z

    return-object p0
.end method

.method public animateDimmed()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;
    .locals 1

    const/4 v0, 0x1

    .line 87
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateDimmed:Z

    return-object p0
.end method

.method public animateHeight()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;
    .locals 1

    const/4 v0, 0x1

    .line 77
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateHeight:Z

    return-object p0
.end method

.method public animateHideSensitive()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;
    .locals 1

    const/4 v0, 0x1

    .line 92
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateHideSensitive:Z

    return-object p0
.end method

.method public animateScale()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;
    .locals 1

    .line 51
    sget-object v0, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animate(Landroid/util/Property;)Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    .line 52
    sget-object v0, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animate(Landroid/util/Property;)Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    return-object p0
.end method

.method public animateTopInset()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;
    .locals 1

    const/4 v0, 0x1

    .line 82
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateTopInset:Z

    return-object p0
.end method

.method public animateX()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;
    .locals 1

    const/4 v0, 0x1

    .line 57
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateX:Z

    return-object p0
.end method

.method public animateY()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;
    .locals 1

    const/4 v0, 0x1

    .line 62
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateY:Z

    return-object p0
.end method

.method public animateZ()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;
    .locals 1

    const/4 v0, 0x1

    .line 72
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateZ:Z

    return-object p0
.end method

.method public applyCombination(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;",
            ">;)V"
        }
    .end annotation

    .line 111
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->reset()V

    .line 112
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 114
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;

    .line 115
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;

    iget-object v3, v3, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;->filter:Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->combineFilter(Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;)V

    .line 116
    iget v3, v2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;->animationType:I

    const/4 v4, 0x7

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    .line 118
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->hasGoToFullShadeEvent:Z

    .line 120
    :cond_0
    iget v2, v2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;->animationType:I

    const/16 v3, 0xc

    if-ne v2, v3, :cond_1

    const-wide/16 v2, 0x78

    .line 122
    iput-wide v2, p0, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->customDelay:J

    goto :goto_1

    :cond_1
    const/16 v3, 0xd

    if-ne v2, v3, :cond_2

    const-wide/16 v2, 0xf0

    .line 127
    iput-wide v2, p0, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->customDelay:J

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public combineFilter(Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;)V
    .locals 2

    .line 134
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateAlpha:Z

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateAlpha:Z

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateAlpha:Z

    .line 135
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateX:Z

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateX:Z

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateX:Z

    .line 136
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateY:Z

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateY:Z

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateY:Z

    .line 137
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateYViews:Landroidx/collection/ArraySet;

    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateYViews:Landroidx/collection/ArraySet;

    invoke-virtual {v0, v1}, Landroidx/collection/ArraySet;->addAll(Landroidx/collection/ArraySet;)V

    .line 138
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateZ:Z

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateZ:Z

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateZ:Z

    .line 139
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateHeight:Z

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateHeight:Z

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateHeight:Z

    .line 140
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateTopInset:Z

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateTopInset:Z

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateTopInset:Z

    .line 141
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateDimmed:Z

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateDimmed:Z

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateDimmed:Z

    .line 142
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateHideSensitive:Z

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateHideSensitive:Z

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateHideSensitive:Z

    .line 143
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->hasDelays:Z

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->hasDelays:Z

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->hasDelays:Z

    .line 144
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->mAnimatedProperties:Landroidx/collection/ArraySet;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->mAnimatedProperties:Landroidx/collection/ArraySet;

    invoke-virtual {p0, p1}, Landroidx/collection/ArraySet;->addAll(Landroidx/collection/ArraySet;)V

    return-void
.end method

.method public hasDelays()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;
    .locals 1

    const/4 v0, 0x1

    .line 67
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->hasDelays:Z

    return-object p0
.end method

.method public reset()V
    .locals 2

    const/4 v0, 0x0

    .line 148
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateAlpha:Z

    .line 149
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateX:Z

    .line 150
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateY:Z

    .line 151
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateYViews:Landroidx/collection/ArraySet;

    invoke-virtual {v1}, Landroidx/collection/ArraySet;->clear()V

    .line 152
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateZ:Z

    .line 153
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateHeight:Z

    .line 154
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateTopInset:Z

    .line 155
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateDimmed:Z

    .line 156
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateHideSensitive:Z

    .line 157
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->hasDelays:Z

    .line 158
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->hasGoToFullShadeEvent:Z

    const-wide/16 v0, -0x1

    .line 159
    iput-wide v0, p0, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->customDelay:J

    .line 160
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->mAnimatedProperties:Landroidx/collection/ArraySet;

    invoke-virtual {p0}, Landroidx/collection/ArraySet;->clear()V

    return-void
.end method

.method public shouldAnimateProperty(Landroid/util/Property;)Z
    .locals 0

    .line 170
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->mAnimatedProperties:Landroidx/collection/ArraySet;

    invoke-virtual {p0, p1}, Landroidx/collection/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public shouldAnimateY(Landroid/view/View;)Z
    .locals 1

    .line 102
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateY:Z

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateYViews:Landroidx/collection/ArraySet;

    invoke-virtual {p0, p1}, Landroidx/collection/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
