.class abstract Lknb;
.super Lkms;
.source "SourceFile"


# instance fields
.field private final o:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 962
    invoke-direct {p0}, Lkms;-><init>()V

    .line 963
    invoke-static {p1}, Lfii;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lknb;->o:Ljava/lang/String;

    .line 964
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 968
    iget-object v0, p0, Lknb;->o:Ljava/lang/String;

    return-object v0
.end method
