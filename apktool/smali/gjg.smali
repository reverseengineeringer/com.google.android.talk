.class public final Lgjg;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lfxx;


# direct methods
.method public constructor <init>(Lfxx;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Laal;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfxx;

    iput-object v0, p0, Lgjg;->a:Lfxx;

    return-void
.end method


# virtual methods
.method public a()Lfxx;
    .locals 1

    iget-object v0, p0, Lgjg;->a:Lfxx;

    return-object v0
.end method
