.class public Lcom/android/systemui/tuner/ClockPreference;
.super Landroidx/preference/DropDownPreference;
.source "ClockPreference.java"

# interfaces
.implements Lcom/android/systemui/tuner/TunerService$Tunable;


# instance fields
.field private mBlacklist:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mClock:Ljava/lang/String;

.field private mClockEnabled:Z

.field private mHasSeconds:Z

.field private mHasSetValue:Z

.field private mReceivedClock:Z

.field private mReceivedSeconds:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 42
    invoke-direct {p0, p1, p2}, Landroidx/preference/DropDownPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p2, 0x104079b

    .line 43
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/tuner/ClockPreference;->mClock:Ljava/lang/String;

    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/CharSequence;

    const/4 p2, 0x0

    const-string v0, "seconds"

    aput-object v0, p1, p2

    const/4 p2, 0x1

    const-string v0, "default"

    aput-object v0, p1, p2

    const/4 p2, 0x2

    const-string v0, "disabled"

    aput-object v0, p1, p2

    .line 44
    invoke-virtual {p0, p1}, Landroidx/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public onAttached()V
    .locals 3

    .line 49
    invoke-super {p0}, Landroidx/preference/Preference;->onAttached()V

    .line 50
    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    const-string v1, "icon_blacklist"

    const-string v2, "clock_seconds"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    return-void
.end method

.method public onDetached()V
    .locals 1

    .line 56
    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    invoke-virtual {v0, p0}, Lcom/android/systemui/tuner/TunerService;->removeTunable(Lcom/android/systemui/tuner/TunerService$Tunable;)V

    .line 57
    invoke-super {p0}, Landroidx/preference/Preference;->onDetached()V

    return-void
.end method

.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "icon_blacklist"

    .line 62
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 63
    iput-boolean v1, p0, Lcom/android/systemui/tuner/ClockPreference;->mReceivedClock:Z

    .line 64
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->getIconBlacklist(Landroid/content/Context;Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/tuner/ClockPreference;->mBlacklist:Landroid/util/ArraySet;

    .line 65
    iget-object p2, p0, Lcom/android/systemui/tuner/ClockPreference;->mClock:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v1

    iput-boolean p1, p0, Lcom/android/systemui/tuner/ClockPreference;->mClockEnabled:Z

    goto :goto_1

    :cond_0
    const-string v0, "clock_seconds"

    .line 66
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 67
    iput-boolean v1, p0, Lcom/android/systemui/tuner/ClockPreference;->mReceivedSeconds:Z

    if-eqz p2, :cond_1

    .line 68
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_1

    move p1, v1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/tuner/ClockPreference;->mHasSeconds:Z

    .line 70
    :cond_2
    :goto_1
    iget-boolean p1, p0, Lcom/android/systemui/tuner/ClockPreference;->mHasSetValue:Z

    if-nez p1, :cond_5

    iget-boolean p1, p0, Lcom/android/systemui/tuner/ClockPreference;->mReceivedClock:Z

    if-eqz p1, :cond_5

    iget-boolean p1, p0, Lcom/android/systemui/tuner/ClockPreference;->mReceivedSeconds:Z

    if-eqz p1, :cond_5

    .line 74
    iput-boolean v1, p0, Lcom/android/systemui/tuner/ClockPreference;->mHasSetValue:Z

    .line 75
    iget-boolean p1, p0, Lcom/android/systemui/tuner/ClockPreference;->mClockEnabled:Z

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/android/systemui/tuner/ClockPreference;->mHasSeconds:Z

    if-eqz p1, :cond_3

    const-string p1, "seconds"

    .line 76
    invoke-virtual {p0, p1}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_2

    .line 77
    :cond_3
    iget-boolean p1, p0, Lcom/android/systemui/tuner/ClockPreference;->mClockEnabled:Z

    if-eqz p1, :cond_4

    const-string p1, "default"

    .line 78
    invoke-virtual {p0, p1}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    const-string p1, "disabled"

    .line 80
    invoke-virtual {p0, p1}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    :cond_5
    :goto_2
    return-void
.end method

.method protected persistString(Ljava/lang/String;)Z
    .locals 4

    .line 87
    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/tuner/TunerService;

    const-string v2, "seconds"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "clock_seconds"

    invoke-virtual {v1, v3, v2}, Lcom/android/systemui/tuner/TunerService;->setValue(Ljava/lang/String;I)V

    const-string v1, "disabled"

    .line 89
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 90
    iget-object p1, p0, Lcom/android/systemui/tuner/ClockPreference;->mBlacklist:Landroid/util/ArraySet;

    iget-object v1, p0, Lcom/android/systemui/tuner/ClockPreference;->mClock:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 92
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/tuner/ClockPreference;->mBlacklist:Landroid/util/ArraySet;

    iget-object v1, p0, Lcom/android/systemui/tuner/ClockPreference;->mClock:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 94
    :goto_0
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/tuner/TunerService;

    iget-object p0, p0, Lcom/android/systemui/tuner/ClockPreference;->mBlacklist:Landroid/util/ArraySet;

    const-string v0, ","

    .line 95
    invoke-static {v0, p0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "icon_blacklist"

    .line 94
    invoke-virtual {p1, v0, p0}, Lcom/android/systemui/tuner/TunerService;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method
