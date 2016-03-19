.class public final Lcu;
.super Ldo;
.source "SourceFile"


# static fields
.field public static final d:Ldp;


# instance fields
.field public a:I

.field public b:Ljava/lang/CharSequence;

.field public c:Landroid/app/PendingIntent;

.field private final e:Landroid/os/Bundle;

.field private final f:[Lee;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2171
    new-instance v0, Ldp;

    invoke-direct {v0}, Ldp;-><init>()V

    sput-object v0, Lcu;->d:Ldp;

    return-void
.end method

.method public constructor <init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V
    .locals 6

    .prologue
    .line 1827
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcu;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Lee;)V

    .line 1828
    return-void
.end method

.method constructor <init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Lee;)V
    .locals 1

    .prologue
    .line 1831
    invoke-direct {p0}, Ldo;-><init>()V

    .line 1832
    iput p1, p0, Lcu;->a:I

    .line 1833
    invoke-static {p2}, Lcy;->d(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcu;->b:Ljava/lang/CharSequence;

    .line 1834
    iput-object p3, p0, Lcu;->c:Landroid/app/PendingIntent;

    .line 1835
    if-eqz p4, :cond_0

    :goto_0
    iput-object p4, p0, Lcu;->e:Landroid/os/Bundle;

    .line 1836
    iput-object p5, p0, Lcu;->f:[Lee;

    .line 1837
    return-void

    .line 1835
    :cond_0
    new-instance p4, Landroid/os/Bundle;

    invoke-direct {p4}, Landroid/os/Bundle;-><init>()V

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 1841
    iget v0, p0, Lcu;->a:I

    return v0
.end method

.method public b()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1846
    iget-object v0, p0, Lcu;->b:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public c()Landroid/app/PendingIntent;
    .locals 1

    .prologue
    .line 1851
    iget-object v0, p0, Lcu;->c:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public d()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 1859
    iget-object v0, p0, Lcu;->e:Landroid/os/Bundle;

    return-object v0
.end method

.method public synthetic e()[Lek;
    .locals 1

    .prologue
    .line 2868
    iget-object v0, p0, Lcu;->f:[Lee;

    .line 1808
    return-object v0
.end method
