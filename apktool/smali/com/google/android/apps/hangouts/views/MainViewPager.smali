.class public Lcom/google/android/apps/hangouts/views/MainViewPager;
.super Lfcl;
.source "SourceFile"


# static fields
.field public static final d:Lfcn;

.field public static final e:Lfcn;


# instance fields
.field private f:Lfco;

.field private g:I

.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 27
    new-instance v0, Lfcn;

    const-class v1, Lcom/google/android/apps/hangouts/fragments/ConversationListFragment;

    const-string v2, "conversations"

    sget v3, Lcom/google/android/apps/hangouts/hangout/StressMode;->rD:I

    sget v4, Lcom/google/android/apps/hangouts/R$drawable;->aJ:I

    const/16 v5, 0x60a

    invoke-direct/range {v0 .. v5}, Lfcn;-><init>(Ljava/lang/Class;Ljava/lang/String;III)V

    sput-object v0, Lcom/google/android/apps/hangouts/views/MainViewPager;->d:Lfcn;

    .line 35
    new-instance v0, Lfcn;

    const-class v1, Lcom/google/android/apps/hangouts/fragments/CallContactPickerFragment;

    const-string v2, "phone_calls"

    sget v3, Lcom/google/android/apps/hangouts/hangout/StressMode;->rC:I

    sget v4, Lcom/google/android/apps/hangouts/R$drawable;->aM:I

    const/16 v5, 0x60b

    invoke-direct/range {v0 .. v5}, Lfcn;-><init>(Ljava/lang/Class;Ljava/lang/String;III)V

    sput-object v0, Lcom/google/android/apps/hangouts/views/MainViewPager;->e:Lfcn;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lfcl;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/hangouts/views/MainViewPager;->g:I

    .line 49
    return-void
.end method

.method private a(Lbg;Ljava/util/List;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbg;",
            "Ljava/util/List",
            "<",
            "Lav;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lav;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 158
    invoke-virtual {p1}, Lbg;->a()Lbz;

    move-result-object v2

    .line 159
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lav;

    .line 1147
    instance-of v1, v0, Lcom/google/android/apps/hangouts/fragments/ConversationListFragment;

    if-nez v1, :cond_1

    instance-of v1, v0, Lcom/google/android/apps/hangouts/fragments/CallContactPickerFragment;

    if-eqz v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    .line 160
    :goto_1
    if-eqz v1, :cond_0

    .line 161
    invoke-virtual {v0}, Lav;->isDetached()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 164
    invoke-virtual {v2, v0}, Lbz;->a(Lav;)Lbz;

    goto :goto_0

    .line 1147
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 167
    :cond_3
    iget-object v1, p0, Lcom/google/android/apps/hangouts/views/MainViewPager;->f:Lfco;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v1, v4}, Lfco;->a(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 170
    invoke-virtual {v2, v0}, Lbz;->a(Lav;)Lbz;

    goto :goto_0

    .line 174
    :cond_4
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lav;

    .line 175
    if-eqz v1, :cond_5

    .line 176
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    if-eq v0, v1, :cond_5

    .line 180
    invoke-virtual {v2, v0}, Lbz;->a(Lav;)Lbz;

    goto :goto_0

    .line 191
    :cond_6
    invoke-virtual {v2}, Lbz;->c()I

    .line 194
    invoke-virtual {p1}, Lbg;->b()Z

    .line 195
    return-void
.end method


# virtual methods
.method public a(ILbg;Z)Z
    .locals 4

    .prologue
    .line 112
    iget v0, p0, Lcom/google/android/apps/hangouts/views/MainViewPager;->g:I

    if-ne v0, p1, :cond_0

    iget-boolean v0, p0, Lcom/google/android/apps/hangouts/views/MainViewPager;->h:Z

    if-ne v0, p3, :cond_0

    .line 113
    const/4 v0, 0x0

    .line 125
    :goto_0
    return v0

    .line 115
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p2}, Lbg;->d()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1130
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1132
    const/4 v2, -0x1

    if-eq p1, v2, :cond_1

    .line 1133
    sget-object v2, Lcom/google/android/apps/hangouts/views/MainViewPager;->d:Lfcn;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1134
    if-eqz p3, :cond_1

    .line 1135
    sget-object v2, Lcom/google/android/apps/hangouts/views/MainViewPager;->e:Lfcn;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1139
    :cond_1
    new-instance v2, Lfco;

    .line 1140
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/views/MainViewPager;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, p2, v3, p1, v1}, Lfco;-><init>(Lbg;Landroid/content/Context;ILjava/util/List;)V

    .line 117
    iput-object v2, p0, Lcom/google/android/apps/hangouts/views/MainViewPager;->f:Lfco;

    .line 118
    iget-object v1, p0, Lcom/google/android/apps/hangouts/views/MainViewPager;->f:Lfco;

    invoke-virtual {p0, v1}, Lcom/google/android/apps/hangouts/views/MainViewPager;->a(Lkh;)V

    .line 120
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p2}, Lbg;->d()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 121
    invoke-direct {p0, p2, v0, v1}, Lcom/google/android/apps/hangouts/views/MainViewPager;->a(Lbg;Ljava/util/List;Ljava/util/List;)V

    .line 123
    iput p1, p0, Lcom/google/android/apps/hangouts/views/MainViewPager;->g:I

    .line 124
    iput-boolean p3, p0, Lcom/google/android/apps/hangouts/views/MainViewPager;->h:Z

    .line 125
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public a(Lfcn;)Z
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/android/apps/hangouts/views/MainViewPager;->f:Lfco;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/google/android/apps/hangouts/views/MainViewPager;->f:Lfco;

    invoke-virtual {v0, p1}, Lfco;->a(Lfcn;)I

    move-result v0

    .line 70
    if-ltz v0, :cond_0

    .line 71
    invoke-virtual {p0, v0}, Lcom/google/android/apps/hangouts/views/MainViewPager;->b(I)V

    .line 72
    const/4 v0, 0x1

    .line 76
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 80
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/hangouts/views/MainViewPager;->f:Lfco;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/google/android/apps/hangouts/views/MainViewPager;->f:Lfco;

    invoke-virtual {v0, p1}, Lfco;->a(Ljava/lang/String;)I

    move-result v0

    .line 82
    if-ltz v0, :cond_0

    .line 83
    invoke-virtual {p0, v0}, Lcom/google/android/apps/hangouts/views/MainViewPager;->b(I)V

    .line 84
    const/4 v0, 0x1

    .line 88
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h()Lfco;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/android/apps/hangouts/views/MainViewPager;->f:Lfco;

    return-object v0
.end method

.method public i()Lfcn;
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/apps/hangouts/views/MainViewPager;->f:Lfco;

    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/views/MainViewPager;->c()I

    move-result v0

    .line 58
    iget-object v1, p0, Lcom/google/android/apps/hangouts/views/MainViewPager;->f:Lfco;

    invoke-virtual {v1}, Lfco;->b()I

    move-result v1

    .line 59
    if-ltz v0, :cond_0

    if-ge v0, v1, :cond_0

    .line 60
    iget-object v1, p0, Lcom/google/android/apps/hangouts/views/MainViewPager;->f:Lfco;

    invoke-virtual {v1, v0}, Lfco;->d(I)Lfcn;

    move-result-object v0

    .line 64
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public j()Z
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/google/android/apps/hangouts/views/MainViewPager;->f:Lfco;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
