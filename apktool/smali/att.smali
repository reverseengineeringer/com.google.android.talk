.class public final Latt;
.super Lav;
.source "SourceFile"


# instance fields
.field private final a:Latf;

.field private final b:Latn;

.field private final c:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Latt;",
            ">;"
        }
    .end annotation
.end field

.field private d:Latt;

.field private e:Lahw;

.field private f:Lav;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    new-instance v0, Latf;

    invoke-direct {v0}, Latf;-><init>()V

    invoke-direct {p0, v0}, Latt;-><init>(Latf;)V

    .line 39
    return-void
.end method

.method private constructor <init>(Latf;)V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Lav;-><init>()V

    .line 28
    new-instance v0, Latu;

    .line 1206
    invoke-direct {v0, p0}, Latu;-><init>(Latt;)V

    .line 28
    iput-object v0, p0, Latt;->b:Latn;

    .line 30
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Latt;->c:Ljava/util/HashSet;

    .line 44
    iput-object p1, p0, Latt;->a:Latf;

    .line 45
    return-void
.end method

.method private a(Lba;)V
    .locals 3

    .prologue
    .line 137
    invoke-direct {p0}, Latt;->d()V

    .line 2068
    sget-object v0, Latr;->a:Latr;

    .line 139
    invoke-virtual {p1}, Lba;->C_()Lbg;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Latr;->a(Lbg;Lav;)Latt;

    move-result-object v0

    iput-object v0, p0, Latt;->d:Latt;

    .line 140
    iget-object v0, p0, Latt;->d:Latt;

    if-eq v0, p0, :cond_0

    .line 141
    iget-object v0, p0, Latt;->d:Latt;

    .line 2078
    iget-object v0, v0, Latt;->c:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 143
    :cond_0
    return-void
.end method

.method private d()V
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Latt;->d:Latt;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Latt;->d:Latt;

    .line 2082
    iget-object v0, v0, Latt;->c:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 148
    const/4 v0, 0x0

    iput-object v0, p0, Latt;->d:Latt;

    .line 150
    :cond_0
    return-void
.end method


# virtual methods
.method a()Latf;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Latt;->a:Latf;

    return-object v0
.end method

.method public a(Lahw;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Latt;->e:Lahw;

    .line 54
    return-void
.end method

.method a(Lav;)V
    .locals 1

    .prologue
    .line 111
    iput-object p1, p0, Latt;->f:Lav;

    .line 112
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lav;->getActivity()Lba;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {p1}, Lav;->getActivity()Lba;

    move-result-object v0

    invoke-direct {p0, v0}, Latt;->a(Lba;)V

    .line 115
    :cond_0
    return-void
.end method

.method public b()Lahw;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Latt;->e:Lahw;

    return-object v0
.end method

.method public c()Latn;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Latt;->b:Latn;

    return-object v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 154
    invoke-super {p0, p1}, Lav;->onAttach(Landroid/app/Activity;)V

    .line 156
    :try_start_0
    invoke-virtual {p0}, Latt;->getActivity()Lba;

    move-result-object v0

    invoke-direct {p0, v0}, Latt;->a(Lba;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 186
    invoke-super {p0}, Lav;->onDestroy()V

    .line 187
    iget-object v0, p0, Latt;->a:Latf;

    invoke-virtual {v0}, Latf;->c()V

    .line 188
    invoke-direct {p0}, Latt;->d()V

    .line 189
    return-void
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 167
    invoke-super {p0}, Lav;->onDetach()V

    .line 168
    const/4 v0, 0x0

    iput-object v0, p0, Latt;->f:Lav;

    .line 169
    invoke-direct {p0}, Latt;->d()V

    .line 170
    return-void
.end method

.method public onLowMemory()V
    .locals 1

    .prologue
    .line 193
    invoke-super {p0}, Lav;->onLowMemory()V

    .line 196
    iget-object v0, p0, Latt;->e:Lahw;

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Latt;->e:Lahw;

    invoke-virtual {v0}, Lahw;->a()V

    .line 199
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 174
    invoke-super {p0}, Lav;->onStart()V

    .line 175
    iget-object v0, p0, Latt;->a:Latf;

    invoke-virtual {v0}, Latf;->a()V

    .line 176
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 180
    invoke-super {p0}, Lav;->onStop()V

    .line 181
    iget-object v0, p0, Latt;->a:Latf;

    invoke-virtual {v0}, Latf;->b()V

    .line 182
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 203
    invoke-super {p0}, Lav;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 2118
    invoke-virtual {p0}, Latt;->getParentFragment()Lav;

    move-result-object v0

    .line 2119
    if-eqz v0, :cond_0

    .line 203
    :goto_0
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

    .line 2119
    :cond_0
    iget-object v0, p0, Latt;->f:Lav;

    goto :goto_0
.end method
