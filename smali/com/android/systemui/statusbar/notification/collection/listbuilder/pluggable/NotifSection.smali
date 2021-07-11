.class public abstract Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifSection;
.super Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/Pluggable;
.source "NotifSection.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/Pluggable<",
        "Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifSection;",
        ">;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/Pluggable;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public abstract isInSection(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Z
.end method
