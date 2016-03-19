.class public final Latp;
.super Landroid/app/Fragment;
.source "SourceFile"


# instance fields
.field private final a:Latf;

.field private final b:Latn;

.field private final c:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Latp;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lahw;

.field private e:Latp;

.field private f:Landroid/app/Fragment;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Latf;

    invoke-direct {v0}, Latf;-><init>()V

    invoke-direct {p0, v0}, Latp;-><init>(Latf;)V

    .line 41
    return-void
.end method

.method private constructor <init>(Latf;)V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 30
    new-instance v0, Latq;

    .line 1224
    invoke-direct {v0, p0}, Latq;-><init>(Latp;)V

    .line 30
    iput-object v0, p0, Latp;->b:Latn;

    .line 32
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Latp;->c:Ljava/util/HashSet;

    .line 46
    iput-object p1, p0, Latp;->a:Latf;

    .line 47
    return-void
.end method

.method private a(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 148
    invoke-direct {p0}, Latp;->d()V

    .line 2068
    sget-object v0, Latr;->a:Latr;

    .line 150
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Latr;->a(Landroid/app/FragmentManager;Landroid/app/Fragment;)Latp;

    move-result-object v0

    iput-object v0, p0, Latp;->e:Latp;

    .line 151
    iget-object v0, p0, Latp;->e:Latp;

    if-eq v0, p0, :cond_0

    .line 152
    iget-object v0, p0, Latp;->e:Latp;

    .line 2078
    iget-object v0, v0, Latp;->c:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 154
    :cond_0
    return-void
.end method

.method private d()V
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Latp;->e:Latp;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Latp;->e:Latp;

    .line 2082
    iget-object v0, v0, Latp;->c:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 159
    const/4 v0, 0x0

    iput-object v0, p0, Latp;->e:Latp;

    .line 161
    :cond_0
    return-void
.end method


# virtual methods
.method a()Latf;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Latp;->a:Latf;

    return-object v0
.end method

.method public a(Lahw;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Latp;->d:Lahw;

    .line 56
    return-void
.end method

.method a(Landroid/app/Fragment;)V
    .locals 1

    .prologue
    .line 115
    iput-object p1, p0, Latp;->f:Landroid/app/Fragment;

    .line 116
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 117
    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0}, Latp;->a(Landroid/app/Activity;)V

    .line 119
    :cond_0
    return-void
.end method

.method public b()Lahw;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Latp;->d:Lahw;

    return-object v0
.end method

.method public c()Latn;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Latp;->b:Latn;

    return-object v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 165
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 167
    :try_start_0
    invoke-direct {p0, p1}, Latp;->a(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 196
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 197
    iget-object v0, p0, Latp;->a:Latf;

    invoke-virtual {v0}, Latf;->c()V

    .line 198
    invoke-direct {p0}, Latp;->d()V

    .line 199
    return-void
.end method

.method public onDetach()V
    .locals 0

    .prologue
    .line 178
    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    .line 179
    invoke-direct {p0}, Latp;->d()V

    .line 180
    return-void
.end method

.method public onLowMemory()V
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Latp;->d:Lahw;

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Latp;->d:Lahw;

    invoke-virtual {v0}, Lahw;->a()V

    .line 217
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 184
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 185
    iget-object v0, p0, Latp;->a:Latf;

    invoke-virtual {v0}, Latf;->a()V

    .line 186
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 190
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 191
    iget-object v0, p0, Latp;->a:Latf;

    invoke-virtual {v0}, Latf;->b()V

    .line 192
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Latp;->d:Lahw;

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Latp;->d:Lahw;

    invoke-virtual {v0, p1}, Lahw;->a(I)V

    .line 208
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 221
    invoke-super {p0}, Landroid/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 2124
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v0, v2, :cond_0

    .line 2125
    invoke-virtual {p0}, Latp;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    .line 2129
    :goto_0
    if-eqz v0, :cond_1

    .line 221
    :goto_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x9

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "{parent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2127
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 2129
    :cond_1
    iget-object v0, p0, Latp;->f:Landroid/app/Fragment;

    goto :goto_1
.end method
