.class public final Lekc;
.super Limg;
.source "SourceFile"

# interfaces
.implements Lbii;
.implements Lija;


# instance fields
.field a:Lhpu;

.field private b:Liiv;

.field private c:Liiv;

.field private d:Liiv;

.field private e:Lcom/google/android/libraries/social/settings/PreferenceCategory;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 41
    invoke-direct {p0}, Limg;-><init>()V

    .line 52
    new-instance v0, Liiz;

    iget-object v1, p0, Lekc;->lifecycle:Linz;

    invoke-direct {v0, p0, v1}, Liiz;-><init>(Lija;Liog;)V

    .line 53
    return-void
.end method

.method private a(IZLdnq;)Liiv;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 138
    invoke-direct {p0, p2, p3, v0, v0}, Lekc;->a(ZLdnq;Ljava/lang/String;Ljava/lang/String;)Liiv;

    move-result-object v0

    .line 139
    invoke-virtual {v0, p1}, Liiv;->g(I)V

    .line 140
    invoke-virtual {v0, p1}, Liiv;->a(I)V

    .line 141
    return-object v0
.end method

.method private a(ZLdnq;Ljava/lang/String;Ljava/lang/String;)Liiv;
    .locals 6

    .prologue
    .line 162
    new-instance v4, Liiv;

    iget-object v0, p0, Lekc;->context:Lill;

    invoke-direct {v4, v0}, Liiv;-><init>(Landroid/content/Context;)V

    .line 163
    if-eqz p1, :cond_0

    .line 164
    sget v0, Laal;->ct:I

    invoke-virtual {v4, v0}, Liiv;->b(I)V

    .line 165
    sget v0, Laal;->cv:I

    invoke-virtual {v4, v0}, Liiv;->c(I)V

    .line 170
    :goto_0
    new-instance v0, Leke;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Leke;-><init>(Lekc;Ljava/lang/String;Ljava/lang/String;Liiv;Ldnq;)V

    invoke-virtual {v4, v0}, Liiv;->a(Lijg;)V

    .line 179
    return-object v4

    .line 167
    :cond_0
    sget v0, Laal;->cs:I

    invoke-virtual {v4, v0}, Liiv;->b(I)V

    .line 168
    sget v0, Laal;->cu:I

    invoke-virtual {v4, v0}, Liiv;->c(I)V

    goto :goto_0
.end method


# virtual methods
.method public L_()V
    .locals 1

    .prologue
    .line 195
    new-instance v0, Lekf;

    invoke-direct {v0, p0}, Lekf;-><init>(Lekc;)V

    invoke-static {v0}, Laal;->a(Ljava/lang/Runnable;)V

    .line 201
    return-void
.end method

.method public a()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 69
    iget-object v0, p0, Lekc;->a:Lhpu;

    invoke-interface {v0}, Lhpu;->a()I

    move-result v0

    .line 2089
    sget-object v1, Lbie;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 73
    invoke-static {v0}, Lbie;->a(I)V

    .line 75
    new-instance v1, Liji;

    iget-object v0, p0, Lekc;->context:Lill;

    invoke-direct {v1, v0}, Liji;-><init>(Landroid/content/Context;)V

    .line 76
    iget-object v0, p0, Lekc;->binder:Lilh;

    const-class v2, Lika;

    .line 77
    invoke-virtual {v0, v2}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lika;

    invoke-interface {v0}, Lika;->b()Lcom/google/android/libraries/social/settings/PreferenceScreen;

    move-result-object v0

    .line 79
    sget v2, Lcom/google/android/apps/hangouts/hangout/StressMode;->ae:I

    sget-object v3, Ldnq;->b:Ldnq;

    invoke-direct {p0, v2, v4, v3}, Lekc;->a(IZLdnq;)Liiv;

    move-result-object v2

    iput-object v2, p0, Lekc;->c:Liiv;

    .line 81
    iget-object v2, p0, Lekc;->c:Liiv;

    invoke-virtual {v0, v2}, Lcom/google/android/libraries/social/settings/PreferenceScreen;->c(Lijc;)Z

    .line 83
    sget v2, Lcom/google/android/apps/hangouts/hangout/StressMode;->af:I

    sget-object v3, Ldnq;->a:Ldnq;

    invoke-direct {p0, v2, v4, v3}, Lekc;->a(IZLdnq;)Liiv;

    move-result-object v2

    iput-object v2, p0, Lekc;->d:Liiv;

    .line 85
    iget-object v2, p0, Lekc;->d:Liiv;

    invoke-virtual {v0, v2}, Lcom/google/android/libraries/social/settings/PreferenceScreen;->c(Lijc;)Z

    .line 87
    sget v2, Lcom/google/android/apps/hangouts/hangout/StressMode;->ag:I

    const/4 v3, 0x1

    sget-object v4, Ldnq;->c:Ldnq;

    invoke-direct {p0, v2, v3, v4}, Lekc;->a(IZLdnq;)Liiv;

    move-result-object v2

    iput-object v2, p0, Lekc;->b:Liiv;

    .line 89
    iget-object v2, p0, Lekc;->b:Liiv;

    invoke-virtual {v0, v2}, Lcom/google/android/libraries/social/settings/PreferenceScreen;->c(Lijc;)Z

    .line 91
    sget v0, Lcom/google/android/apps/hangouts/hangout/StressMode;->tk:I

    .line 92
    invoke-virtual {p0, v0}, Lekc;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 91
    invoke-virtual {v1, v0}, Liji;->a(Ljava/lang/CharSequence;)Lcom/google/android/libraries/social/settings/PreferenceCategory;

    move-result-object v0

    iput-object v0, p0, Lekc;->e:Lcom/google/android/libraries/social/settings/PreferenceCategory;

    .line 94
    invoke-virtual {p0}, Lekc;->b()V

    .line 95
    return-void
.end method

.method b()V
    .locals 6

    .prologue
    .line 101
    iget-object v0, p0, Lekc;->a:Lhpu;

    invoke-interface {v0}, Lhpu;->a()I

    move-result v1

    .line 102
    iget-object v0, p0, Lekc;->b:Liiv;

    invoke-static {v1}, Lbie;->c(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Liiv;->a(Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lekc;->b:Liiv;

    iget-object v2, p0, Lekc;->b:Liiv;

    invoke-virtual {v2}, Liiv;->i()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Liiv;->b(Ljava/lang/CharSequence;)V

    .line 104
    iget-object v0, p0, Lekc;->c:Liiv;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lekc;->c:Liiv;

    invoke-static {v1}, Lbie;->e(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Liiv;->a(Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lekc;->c:Liiv;

    iget-object v2, p0, Lekc;->c:Liiv;

    invoke-virtual {v2}, Liiv;->i()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Liiv;->b(Ljava/lang/CharSequence;)V

    .line 108
    :cond_0
    iget-object v0, p0, Lekc;->d:Liiv;

    if-eqz v0, :cond_1

    .line 109
    iget-object v0, p0, Lekc;->d:Liiv;

    invoke-static {v1}, Lbie;->d(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Liiv;->a(Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lekc;->d:Liiv;

    iget-object v2, p0, Lekc;->d:Liiv;

    invoke-virtual {v2}, Liiv;->i()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Liiv;->b(Ljava/lang/CharSequence;)V

    .line 113
    :cond_1
    iget-object v0, p0, Lekc;->binder:Lilh;

    const-class v2, Lika;

    invoke-virtual {v0, v2}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lika;

    invoke-interface {v0}, Lika;->b()Lcom/google/android/libraries/social/settings/PreferenceScreen;

    move-result-object v0

    .line 114
    invoke-static {v1}, Lbie;->b(I)Ljava/util/List;

    move-result-object v1

    .line 115
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 116
    iget-object v2, p0, Lekc;->e:Lcom/google/android/libraries/social/settings/PreferenceCategory;

    invoke-virtual {v0, v2}, Lcom/google/android/libraries/social/settings/PreferenceScreen;->c(Lijc;)Z

    .line 117
    iget-object v0, p0, Lekc;->e:Lcom/google/android/libraries/social/settings/PreferenceCategory;

    invoke-virtual {v0}, Lcom/google/android/libraries/social/settings/PreferenceCategory;->c()V

    .line 118
    new-instance v0, Lekd;

    invoke-direct {v0, p0}, Lekd;-><init>(Lekc;)V

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 125
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbih;

    .line 2148
    const/4 v2, 0x1

    sget-object v3, Ldnq;->d:Ldnq;

    iget-object v4, v0, Lbih;->b:Ljava/lang/String;

    iget-object v5, v0, Lbih;->c:Ljava/lang/String;

    .line 2149
    invoke-direct {p0, v2, v3, v4, v5}, Lekc;->a(ZLdnq;Ljava/lang/String;Ljava/lang/String;)Liiv;

    move-result-object v2

    .line 2150
    iget-object v3, v0, Lbih;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Liiv;->c(Ljava/lang/CharSequence;)V

    .line 2151
    iget-object v3, v0, Lbih;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Liiv;->a(Ljava/lang/CharSequence;)V

    .line 2152
    iget-object v0, v0, Lbih;->d:Ljava/lang/String;

    invoke-virtual {v2, v0}, Liiv;->a(Ljava/lang/String;)V

    .line 2153
    invoke-virtual {v2}, Liiv;->i()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v2, v0}, Liiv;->b(Ljava/lang/CharSequence;)V

    .line 127
    iget-object v0, p0, Lekc;->e:Lcom/google/android/libraries/social/settings/PreferenceCategory;

    invoke-virtual {v0, v2}, Lcom/google/android/libraries/social/settings/PreferenceCategory;->c(Lijc;)Z

    goto :goto_0

    .line 130
    :cond_2
    iget-object v1, p0, Lekc;->e:Lcom/google/android/libraries/social/settings/PreferenceCategory;

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/social/settings/PreferenceScreen;->d(Lijc;)Z

    .line 132
    :cond_3
    return-void
.end method

.method protected onAttachBinder(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 57
    invoke-super {p0, p1}, Limg;->onAttachBinder(Landroid/os/Bundle;)V

    .line 58
    iget-object v0, p0, Lekc;->binder:Lilh;

    const-class v1, Lhpu;

    invoke-virtual {v0, v1}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhpu;

    iput-object v0, p0, Lekc;->a:Lhpu;

    .line 59
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 63
    invoke-super {p0}, Limg;->onDestroy()V

    .line 1100
    sget-object v0, Lbie;->a:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 65
    return-void
.end method
