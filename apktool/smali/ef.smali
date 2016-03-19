.class public final Lef;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Ljava/lang/CharSequence;

.field private c:[Ljava/lang/CharSequence;

.field private d:Z

.field private e:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    const/4 v0, 0x1

    iput-boolean v0, p0, Lef;->d:Z

    .line 99
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lef;->e:Landroid/os/Bundle;

    .line 109
    iput-object p1, p0, Lef;->a:Ljava/lang/String;

    .line 110
    return-void
.end method


# virtual methods
.method public a()Lef;
    .locals 1

    .prologue
    .line 144
    const/4 v0, 0x0

    iput-boolean v0, p0, Lef;->d:Z

    .line 145
    return-object p0
.end method

.method public a(Ljava/lang/CharSequence;)Lef;
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lef;->b:Ljava/lang/CharSequence;

    .line 119
    return-object p0
.end method

.method public a([Ljava/lang/CharSequence;)Lef;
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lef;->c:[Ljava/lang/CharSequence;

    .line 131
    return-object p0
.end method

.method public b()Lee;
    .locals 6

    .prologue
    .line 176
    new-instance v0, Lee;

    iget-object v1, p0, Lef;->a:Ljava/lang/String;

    iget-object v2, p0, Lef;->b:Ljava/lang/CharSequence;

    iget-object v3, p0, Lef;->c:[Ljava/lang/CharSequence;

    iget-boolean v4, p0, Lef;->d:Z

    iget-object v5, p0, Lef;->e:Landroid/os/Bundle;

    invoke-direct/range {v0 .. v5}, Lee;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/CharSequence;ZLandroid/os/Bundle;)V

    return-object v0
.end method
