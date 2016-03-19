.class public final Lhjq;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field private final c:Lhks;

.field private final d:Lhjs;

.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lhjt;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/lang/String;

.field private g:Landroid/view/ViewGroup;

.field private h:I

.field private i:I


# direct methods
.method public constructor <init>(Lhks;)V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Lhjs;

    invoke-direct {v0, p0}, Lhjs;-><init>(Lhjq;)V

    iput-object v0, p0, Lhjq;->d:Lhjs;

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lhjq;->e:Ljava/util/Map;

    .line 55
    const/4 v0, 0x3

    iput v0, p0, Lhjq;->h:I

    .line 56
    const/4 v0, 0x1

    iput v0, p0, Lhjq;->i:I

    .line 59
    iput-object p1, p0, Lhjq;->c:Lhks;

    .line 60
    iget-object v0, p0, Lhjq;->d:Lhjs;

    invoke-interface {p1, v0}, Lhks;->a(Lhku;)V

    .line 61
    return-void
.end method

.method private a(Lhjt;)V
    .locals 3

    .prologue
    .line 203
    iget-object v0, p1, Lhjt;->b:Landroid/view/ViewGroup;

    iget-object v1, p1, Lhjt;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 204
    iget-object v0, p0, Lhjq;->g:Landroid/view/ViewGroup;

    iget-object v1, p1, Lhjt;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 205
    iget-object v0, p1, Lhjt;->e:Lhkl;

    iget v1, p0, Lhjq;->h:I

    invoke-virtual {v0, v1}, Lhkl;->a(I)V

    .line 206
    iget-object v0, p1, Lhjt;->e:Lhkl;

    invoke-virtual {v0}, Lhkl;->a()V

    .line 207
    iget-object v0, p1, Lhjt;->f:Lhjr;

    iget-object v1, p1, Lhjt;->a:Ljava/lang/String;

    iget-object v2, p0, Lhjq;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lhjr;->a(Z)V

    .line 208
    return-void
.end method

.method private b()V
    .locals 4

    .prologue
    .line 172
    iget-object v0, p0, Lhjq;->f:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 185
    :goto_0
    return-void

    .line 176
    :cond_0
    iget-object v0, p0, Lhjq;->e:Ljava/util/Map;

    iget-object v1, p0, Lhjq;->f:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhjt;

    .line 177
    if-eqz v0, :cond_1

    .line 178
    iget-object v1, v0, Lhjt;->f:Lhjr;

    invoke-virtual {v1}, Lhjr;->a()V

    .line 179
    iget-object v1, p0, Lhjq;->g:Landroid/view/ViewGroup;

    iget-object v2, v0, Lhjt;->d:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 180
    iget-object v1, v0, Lhjt;->b:Landroid/view/ViewGroup;

    iget-object v2, v0, Lhjt;->d:Landroid/view/View;

    iget v3, v0, Lhjt;->c:I

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 181
    iget-object v1, v0, Lhjt;->e:Lhkl;

    iget v2, p0, Lhjq;->i:I

    invoke-virtual {v1, v2}, Lhkl;->a(I)V

    .line 182
    iget-object v0, v0, Lhjt;->e:Lhkl;

    invoke-virtual {v0}, Lhkl;->a()V

    .line 184
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lhjq;->f:Ljava/lang/String;

    goto :goto_0
.end method

.method private d(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 211
    if-nez p1, :cond_1

    .line 212
    const/4 p1, 0x0

    .line 217
    :cond_0
    :goto_0
    return-object p1

    .line 214
    :cond_1
    iget-object v0, p0, Lhjq;->c:Lhks;

    invoke-interface {v0}, Lhks;->l()Lhkv;

    move-result-object v0

    .line 215
    invoke-virtual {v0}, Lhkv;->b()Lhkw;

    move-result-object v1

    if-nez v1, :cond_2

    .line 216
    const-string v0, "localParticipant"

    .line 217
    :goto_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "localParticipant"

    goto :goto_0

    .line 216
    :cond_2
    invoke-virtual {v0}, Lhkv;->b()Lhkw;

    move-result-object v0

    invoke-virtual {v0}, Lhkw;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lhjq;->c:Lhks;

    iget-object v1, p0, Lhjq;->d:Lhjs;

    invoke-interface {v0, v1}, Lhks;->b(Lhku;)V

    .line 65
    invoke-direct {p0}, Lhjq;->b()V

    .line 66
    iget-object v0, p0, Lhjq;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhjt;

    .line 67
    iget-object v0, v0, Lhjt;->e:Lhkl;

    invoke-virtual {v0}, Lhkl;->b()V

    goto :goto_0

    .line 69
    :cond_0
    iget-object v0, p0, Lhjq;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 70
    return-void
.end method

.method public a(Landroid/view/ViewGroup;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lhjq;->g:Landroid/view/ViewGroup;

    .line 92
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 144
    invoke-direct {p0, p1}, Lhjq;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 145
    iget-object v0, p0, Lhjq;->f:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    invoke-direct {p0}, Lhjq;->b()V

    .line 150
    :cond_0
    iget-object v0, p0, Lhjq;->e:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhjt;

    .line 151
    if-eqz v0, :cond_1

    .line 152
    iget-object v0, v0, Lhjt;->e:Lhkl;

    invoke-virtual {v0}, Lhkl;->b()V

    .line 154
    :cond_1
    iget-object v0, p0, Lhjq;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 155
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lhjq;->b(Ljava/lang/String;)V

    .line 157
    :cond_2
    return-void
.end method

.method public a(Ljava/lang/String;Landroid/view/View;Lhjr;)V
    .locals 4

    .prologue
    .line 105
    iget-object v0, p0, Lhjq;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    const-string v0, "vclib"

    const-string v1, "View already registered for participant %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lhlk;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 138
    :goto_0
    return-void

    .line 110
    :cond_0
    invoke-direct {p0, p1}, Lhjq;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 111
    new-instance v2, Lhjt;

    invoke-direct {v2}, Lhjt;-><init>()V

    .line 112
    iput-object v1, v2, Lhjt;->a:Ljava/lang/String;

    .line 113
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, v2, Lhjt;->b:Landroid/view/ViewGroup;

    .line 114
    iget-object v0, v2, Lhjt;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    iput v0, v2, Lhjt;->c:I

    .line 115
    iput-object p2, v2, Lhjt;->d:Landroid/view/View;

    .line 116
    iput-object p3, v2, Lhjt;->f:Lhjr;

    .line 119
    instance-of v0, p2, Landroid/view/TextureView;

    if-eqz v0, :cond_1

    .line 120
    check-cast p2, Landroid/view/TextureView;

    .line 124
    :goto_1
    new-instance v0, Lhkl;

    iget-object v3, p0, Lhjq;->c:Lhks;

    invoke-direct {v0, v3, p2}, Lhkl;-><init>(Lhks;Landroid/view/TextureView;)V

    .line 125
    invoke-virtual {v0, v1}, Lhkl;->a(Ljava/lang/String;)V

    .line 126
    invoke-virtual {v0}, Lhkl;->c()V

    .line 127
    invoke-virtual {p3, v0}, Lhjr;->a(Lhkl;)V

    .line 129
    iput-object v0, v2, Lhjt;->e:Lhkl;

    .line 130
    iget-object v3, p0, Lhjq;->e:Ljava/util/Map;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    iget-object v3, p0, Lhjq;->f:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 132
    invoke-direct {p0, v2}, Lhjq;->a(Lhjt;)V

    goto :goto_0

    .line 122
    :cond_1
    const/4 v0, -0x1

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/TextureView;

    move-object p2, v0

    goto :goto_1

    .line 133
    :cond_2
    iget-object v2, p0, Lhjq;->f:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 134
    invoke-virtual {p0, v1}, Lhjq;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 136
    :cond_3
    iget v1, p0, Lhjq;->i:I

    invoke-virtual {v0, v1}, Lhkl;->a(I)V

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 164
    invoke-direct {p0, p1}, Lhjq;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lhjq;->b:Ljava/lang/String;

    .line 165
    iget-object v0, p0, Lhjq;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lhjq;->a:Ljava/lang/String;

    :goto_0
    invoke-virtual {p0, v0}, Lhjq;->c(Ljava/lang/String;)V

    .line 166
    return-void

    .line 165
    :cond_0
    iget-object v0, p0, Lhjq;->b:Ljava/lang/String;

    goto :goto_0
.end method

.method protected c(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 191
    if-eqz p1, :cond_0

    iget-object v0, p0, Lhjq;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 200
    :cond_0
    :goto_0
    return-void

    .line 194
    :cond_1
    invoke-direct {p0}, Lhjq;->b()V

    .line 195
    iput-object p1, p0, Lhjq;->f:Ljava/lang/String;

    .line 196
    iget-object v0, p0, Lhjq;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhjt;

    .line 197
    if-eqz v0, :cond_0

    .line 198
    invoke-direct {p0, v0}, Lhjq;->a(Lhjt;)V

    goto :goto_0
.end method
