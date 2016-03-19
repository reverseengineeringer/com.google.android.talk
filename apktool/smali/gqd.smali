.class public final Lgqd;
.super Ljava/lang/Object;

# interfaces
.implements Lfhy;


# static fields
.field public static final a:Lgqd;


# instance fields
.field private final b:Z

.field private final c:Z

.field private final d:Ljava/lang/String;

.field private final e:La;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lgqe;

    invoke-direct {v0}, Lgqe;-><init>()V

    invoke-virtual {v0}, Lgqe;->a()Lgqd;

    move-result-object v0

    sput-object v0, Lgqd;->a:Lgqd;

    return-void
.end method

.method constructor <init>(ZZLjava/lang/String;La;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lgqd;->b:Z

    iput-boolean p2, p0, Lgqd;->c:Z

    iput-object p3, p0, Lgqd;->d:Ljava/lang/String;

    iput-object p4, p0, Lgqd;->e:La;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lgqd;->b:Z

    return v0
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lgqd;->c:Z

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lgqd;->d:Ljava/lang/String;

    return-object v0
.end method

.method public d()La;
    .locals 1

    iget-object v0, p0, Lgqd;->e:La;

    return-object v0
.end method
