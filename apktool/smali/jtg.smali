.class public final Ljtg;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/app/Activity;

.field private b:Ljtn;

.field private c:Ljtn;

.field private d:Z

.field private e:Ljtm;

.field private f:Ljtm;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Ljtg;->a:Landroid/app/Activity;

    .line 26
    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 159
    iget-object v0, p0, Ljtg;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 29
    invoke-static {}, Ljud;->a()Ljtn;

    move-result-object v0

    iput-object v0, p0, Ljtg;->b:Ljtn;

    .line 31
    iget-object v0, p0, Ljtg;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 32
    sget-object v1, Ljrw;->a:Ljrw;

    invoke-static {v0}, Ljua;->a(Landroid/content/Intent;)Ljtn;

    move-result-object v0

    .line 34
    if-eqz v0, :cond_0

    .line 35
    invoke-static {v0}, Ljud;->a(Ljtn;)V

    .line 36
    iput-object v0, p0, Ljtg;->c:Ljtn;

    .line 43
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljtg;->d:Z

    .line 44
    const-string v0, "Creating"

    invoke-direct {p0, v0}, Ljtg;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljud;->a(Ljava/lang/String;)Ljtm;

    move-result-object v0

    iput-object v0, p0, Ljtg;->e:Ljtm;

    .line 45
    return-void

    .line 39
    :cond_0
    iget-object v0, p0, Ljtg;->a:Landroid/app/Activity;

    invoke-static {v0}, Laal;->P(Landroid/content/Context;)Ljto;

    move-result-object v0

    const-string v1, "Intenting into "

    .line 40
    invoke-direct {p0, v1}, Ljtg;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljto;->b(Ljava/lang/String;)V

    .line 41
    invoke-static {}, Ljud;->a()Ljtn;

    move-result-object v0

    iput-object v0, p0, Ljtg;->c:Ljtn;

    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 48
    iget-object v0, p0, Ljtg;->e:Ljtm;

    invoke-static {v0}, Lfii;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    iget-object v0, p0, Ljtg;->e:Ljtm;

    invoke-virtual {v0}, Ljtm;->close()V

    .line 50
    const-string v0, "Creating"

    invoke-direct {p0, v0}, Ljtg;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljud;->b(Ljava/lang/String;)V

    .line 51
    iput-object v1, p0, Ljtg;->e:Ljtm;

    .line 53
    iget-object v0, p0, Ljtg;->b:Ljtn;

    invoke-static {v0}, Ljud;->a(Ljtn;)V

    .line 54
    iput-object v1, p0, Ljtg;->b:Ljtn;

    .line 55
    return-void
.end method

.method public c()V
    .locals 3

    .prologue
    .line 58
    invoke-static {}, Ljud;->a()Ljtn;

    move-result-object v0

    iput-object v0, p0, Ljtg;->b:Ljtn;

    .line 59
    iget-object v0, p0, Ljtg;->c:Ljtn;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Ljtg;->d:Z

    if-nez v0, :cond_0

    .line 60
    iget-object v0, p0, Ljtg;->c:Ljtn;

    invoke-static {v0}, Ljud;->a(Ljtn;)V

    .line 67
    :goto_0
    const-string v0, "Starting"

    invoke-direct {p0, v0}, Ljtg;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljud;->a(Ljava/lang/String;)Ljtm;

    move-result-object v0

    iput-object v0, p0, Ljtg;->f:Ljtm;

    .line 68
    return-void

    .line 62
    :cond_0
    iget-object v0, p0, Ljtg;->a:Landroid/app/Activity;

    invoke-static {v0}, Laal;->P(Landroid/content/Context;)Ljto;

    move-result-object v0

    iget-object v1, p0, Ljtg;->a:Landroid/app/Activity;

    .line 63
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "onStart"

    invoke-virtual {v0, v1, v2}, Ljto;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 64
    invoke-static {}, Ljud;->a()Ljtn;

    move-result-object v0

    iput-object v0, p0, Ljtg;->c:Ljtn;

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljtg;->d:Z

    goto :goto_0
.end method

.method public d()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 71
    iget-object v0, p0, Ljtg;->f:Ljtm;

    invoke-static {v0}, Lfii;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    iget-object v0, p0, Ljtg;->f:Ljtm;

    invoke-virtual {v0}, Ljtm;->close()V

    .line 73
    const-string v0, "Starting"

    invoke-direct {p0, v0}, Ljtg;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljud;->b(Ljava/lang/String;)V

    .line 74
    iput-object v1, p0, Ljtg;->f:Ljtm;

    .line 76
    iget-object v0, p0, Ljtg;->b:Ljtn;

    invoke-static {v0}, Ljud;->a(Ljtn;)V

    .line 77
    iput-object v1, p0, Ljtg;->b:Ljtn;

    .line 78
    return-void
.end method

.method public e()V
    .locals 3

    .prologue
    .line 81
    invoke-static {}, Ljud;->a()Ljtn;

    move-result-object v0

    iput-object v0, p0, Ljtg;->b:Ljtn;

    .line 82
    iget-object v0, p0, Ljtg;->c:Ljtn;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Ljtg;->d:Z

    if-nez v0, :cond_0

    .line 83
    iget-object v0, p0, Ljtg;->c:Ljtn;

    invoke-static {v0}, Ljud;->a(Ljtn;)V

    .line 90
    :goto_0
    return-void

    .line 85
    :cond_0
    iget-object v0, p0, Ljtg;->a:Landroid/app/Activity;

    invoke-static {v0}, Laal;->P(Landroid/content/Context;)Ljto;

    move-result-object v0

    iget-object v1, p0, Ljtg;->a:Landroid/app/Activity;

    .line 86
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "onResume"

    invoke-virtual {v0, v1, v2}, Ljto;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 87
    invoke-static {}, Ljud;->a()Ljtn;

    move-result-object v0

    iput-object v0, p0, Ljtg;->c:Ljtn;

    .line 88
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljtg;->d:Z

    goto :goto_0
.end method

.method public f()V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Ljtg;->b:Ljtn;

    invoke-static {v0}, Ljud;->a(Ljtn;)V

    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, Ljtg;->b:Ljtn;

    .line 95
    return-void
.end method

.method public g()V
    .locals 1

    .prologue
    .line 98
    invoke-static {}, Ljud;->a()Ljtn;

    move-result-object v0

    iput-object v0, p0, Ljtg;->b:Ljtn;

    .line 100
    iget-object v0, p0, Ljtg;->c:Ljtn;

    invoke-static {v0}, Ljud;->a(Ljtn;)V

    .line 101
    return-void
.end method

.method public h()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 105
    iput-object v1, p0, Ljtg;->c:Ljtn;

    .line 106
    iget-object v0, p0, Ljtg;->b:Ljtn;

    invoke-static {v0}, Ljud;->a(Ljtn;)V

    .line 107
    iput-object v1, p0, Ljtg;->b:Ljtn;

    .line 108
    return-void
.end method

.method public i()V
    .locals 3

    .prologue
    .line 111
    invoke-static {}, Ljud;->a()Ljtn;

    move-result-object v0

    iput-object v0, p0, Ljtg;->b:Ljtn;

    .line 112
    iget-object v0, p0, Ljtg;->a:Landroid/app/Activity;

    invoke-static {v0}, Laal;->P(Landroid/content/Context;)Ljto;

    move-result-object v0

    iget-object v1, p0, Ljtg;->a:Landroid/app/Activity;

    .line 113
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "onPause"

    invoke-virtual {v0, v1, v2}, Ljto;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 114
    invoke-static {}, Ljud;->a()Ljtn;

    move-result-object v0

    iput-object v0, p0, Ljtg;->c:Ljtn;

    .line 115
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljtg;->d:Z

    .line 116
    return-void
.end method

.method public j()V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Ljtg;->b:Ljtn;

    invoke-static {v0}, Ljud;->a(Ljtn;)V

    .line 120
    const/4 v0, 0x0

    iput-object v0, p0, Ljtg;->b:Ljtn;

    .line 121
    return-void
.end method

.method public k()V
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Ljtg;->c:Ljtn;

    const-string v1, "onStop called before onPause"

    invoke-static {v0, v1}, Lfii;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    invoke-static {}, Ljud;->a()Ljtn;

    move-result-object v0

    iput-object v0, p0, Ljtg;->b:Ljtn;

    .line 126
    iget-object v0, p0, Ljtg;->c:Ljtn;

    invoke-static {v0}, Ljud;->a(Ljtn;)V

    .line 127
    return-void
.end method

.method public l()V
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Ljtg;->b:Ljtn;

    invoke-static {v0}, Ljud;->a(Ljtn;)V

    .line 131
    const/4 v0, 0x0

    iput-object v0, p0, Ljtg;->b:Ljtn;

    .line 132
    return-void
.end method

.method public m()V
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Ljtg;->c:Ljtn;

    const-string v1, "onDestroy called before onPause"

    invoke-static {v0, v1}, Lfii;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    invoke-static {}, Ljud;->a()Ljtn;

    move-result-object v0

    iput-object v0, p0, Ljtg;->b:Ljtn;

    .line 137
    iget-object v0, p0, Ljtg;->c:Ljtn;

    invoke-static {v0}, Ljud;->a(Ljtn;)V

    .line 138
    return-void
.end method

.method public n()V
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Ljtg;->b:Ljtn;

    invoke-static {v0}, Ljud;->a(Ljtn;)V

    .line 142
    const/4 v0, 0x0

    iput-object v0, p0, Ljtg;->b:Ljtn;

    .line 143
    return-void
.end method

.method public o()V
    .locals 2

    .prologue
    .line 146
    sget-object v0, Ljrw;->a:Ljrw;

    invoke-static {v0}, Ljud;->a(Ljrw;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    const-string v0, "Back pressed"

    invoke-static {v0}, Ljud;->a(Ljava/lang/String;)Ljtm;

    move-result-object v0

    invoke-virtual {v0}, Ljtm;->close()V

    .line 152
    :goto_0
    return-void

    .line 149
    :cond_0
    iget-object v0, p0, Ljtg;->a:Landroid/app/Activity;

    invoke-static {v0}, Laal;->P(Landroid/content/Context;)Ljto;

    move-result-object v0

    const-string v1, "Back pressed"

    .line 150
    invoke-virtual {v0, v1}, Ljto;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
