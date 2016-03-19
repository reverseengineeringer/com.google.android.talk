.class public final Lieb;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lieo;

.field private final b:Ljava/lang/String;

.field private final c:J

.field private final d:Ljava/lang/String;

.field private final e:J

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;


# direct methods
.method constructor <init>(Liec;)V
    .locals 2

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1017
    iget-object v0, p1, Liec;->a:Lieo;

    .line 75
    iput-object v0, p0, Lieb;->a:Lieo;

    .line 2017
    iget-object v0, p1, Liec;->b:Ljava/lang/String;

    .line 76
    iput-object v0, p0, Lieb;->b:Ljava/lang/String;

    .line 3017
    iget-wide v0, p1, Liec;->c:J

    .line 77
    iput-wide v0, p0, Lieb;->c:J

    .line 4017
    iget-object v0, p1, Liec;->d:Ljava/lang/String;

    .line 78
    iput-object v0, p0, Lieb;->d:Ljava/lang/String;

    .line 5017
    iget-wide v0, p1, Liec;->e:J

    .line 79
    iput-wide v0, p0, Lieb;->e:J

    .line 6017
    iget-object v0, p1, Liec;->f:Ljava/lang/String;

    .line 80
    iput-object v0, p0, Lieb;->f:Ljava/lang/String;

    .line 7017
    iget-object v0, p1, Liec;->g:Ljava/lang/String;

    .line 81
    iput-object v0, p0, Lieb;->g:Ljava/lang/String;

    .line 8017
    iget-object v0, p1, Liec;->h:Ljava/lang/String;

    .line 82
    iput-object v0, p0, Lieb;->h:Ljava/lang/String;

    .line 83
    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .prologue
    .line 127
    iget-wide v0, p0, Lieb;->e:J

    return-wide v0
.end method
