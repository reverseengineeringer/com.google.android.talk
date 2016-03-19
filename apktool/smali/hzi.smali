.class public final Lhzi;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:J

.field private static final b:J

.field private static final c:J


# instance fields
.field private d:Lhzj;

.field private e:Lhzf;

.field private f:Lhzf;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 58
    sget-object v0, Lipl;->c:Lipl;

    const-wide/16 v2, 0x5

    invoke-virtual {v0, v2, v3}, Lipl;->a(J)J

    move-result-wide v0

    sput-wide v0, Lhzi;->a:J

    .line 60
    sget-object v0, Lipl;->c:Lipl;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Lipl;->a(J)J

    move-result-wide v0

    sput-wide v0, Lhzi;->b:J

    .line 66
    sget-object v0, Lipl;->c:Lipl;

    const-wide/16 v2, 0x200

    invoke-virtual {v0, v2, v3}, Lipl;->a(J)J

    move-result-wide v0

    sput-wide v0, Lhzi;->c:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Lhzl;

    invoke-direct {v0}, Lhzl;-><init>()V

    invoke-virtual {v0, p1}, Lhzl;->a(Landroid/content/Context;)Lhzj;

    move-result-object v0

    iput-object v0, p0, Lhzi;->d:Lhzj;

    .line 77
    new-instance v0, Lhzg;

    invoke-direct {v0}, Lhzg;-><init>()V

    const-string v1, "media"

    .line 78
    invoke-virtual {v0, v1}, Lhzg;->a(Ljava/lang/String;)Lhzg;

    move-result-object v0

    sget-wide v2, Lhzi;->a:J

    .line 79
    invoke-virtual {v0, v2, v3}, Lhzg;->a(J)Lhzg;

    move-result-object v0

    sget-wide v2, Lhzi;->b:J

    .line 80
    invoke-virtual {v0, v2, v3}, Lhzg;->b(J)Lhzg;

    move-result-object v0

    const v1, 0x3dcccccd    # 0.1f

    .line 81
    invoke-virtual {v0, v1}, Lhzg;->a(F)Lhzg;

    move-result-object v0

    .line 82
    invoke-virtual {v0}, Lhzg;->a()Lhzf;

    move-result-object v0

    iput-object v0, p0, Lhzi;->e:Lhzf;

    .line 84
    new-instance v0, Lhzg;

    invoke-direct {v0}, Lhzg;-><init>()V

    const-string v1, "media_sync"

    .line 85
    invoke-virtual {v0, v1}, Lhzg;->a(Ljava/lang/String;)Lhzg;

    move-result-object v0

    const-wide/16 v2, 0x0

    .line 86
    invoke-virtual {v0, v2, v3}, Lhzg;->a(J)Lhzg;

    move-result-object v0

    sget-wide v2, Lhzi;->c:J

    .line 87
    invoke-virtual {v0, v2, v3}, Lhzg;->b(J)Lhzg;

    move-result-object v0

    const/high16 v1, 0x3e800000    # 0.25f

    .line 88
    invoke-virtual {v0, v1}, Lhzg;->a(F)Lhzg;

    move-result-object v0

    .line 89
    invoke-virtual {v0}, Lhzg;->a()Lhzf;

    move-result-object v0

    iput-object v0, p0, Lhzi;->f:Lhzf;

    .line 90
    return-void
.end method


# virtual methods
.method public a()Lhzh;
    .locals 4

    .prologue
    .line 120
    new-instance v0, Lhzh;

    iget-object v1, p0, Lhzi;->d:Lhzj;

    iget-object v2, p0, Lhzi;->e:Lhzf;

    iget-object v3, p0, Lhzi;->f:Lhzf;

    .line 1013
    invoke-direct {v0, v1, v2, v3}, Lhzh;-><init>(Lhzj;Lhzf;Lhzf;)V

    .line 120
    return-object v0
.end method
