.class Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder$2;
.super Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifSection;
.source "ShadeListBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 845
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifSection;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public isInSection(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
