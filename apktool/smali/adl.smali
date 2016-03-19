.class final Ladl;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:I

.field final synthetic b:Ladk;

.field private c:Ladm;

.field private d:Ladm;


# direct methods
.method constructor <init>(Ladk;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1065
    iput-object p1, p0, Ladl;->b:Ladk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1066
    iput-object v0, p0, Ladl;->c:Ladm;

    .line 1067
    iput-object v0, p0, Ladl;->d:Ladm;

    .line 1069
    const/4 v0, 0x0

    iput v0, p0, Ladl;->a:I

    return-void
.end method


# virtual methods
.method a()V
    .locals 2

    .prologue
    .line 1078
    iget-object v0, p0, Ladl;->d:Ladm;

    if-eqz v0, :cond_0

    .line 1079
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "BUG: Invalid newbuf() before copy()"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1082
    :cond_0
    new-instance v0, Ladm;

    .line 2034
    invoke-direct {v0}, Ladm;-><init>()V

    .line 1084
    iget-object v1, p0, Ladl;->b:Ladk;

    iget-object v1, v1, Ladk;->a:Ljava/io/ByteArrayOutputStream;

    iput-object v1, v0, Ladm;->a:Ljava/io/ByteArrayOutputStream;

    .line 1085
    iget-object v1, p0, Ladl;->b:Ladk;

    iget v1, v1, Ladk;->b:I

    iput v1, v0, Ladm;->b:I

    .line 1087
    iget-object v1, p0, Ladl;->c:Ladm;

    iput-object v1, v0, Ladm;->c:Ladm;

    .line 1088
    iput-object v0, p0, Ladl;->c:Ladm;

    .line 1090
    iget v0, p0, Ladl;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ladl;->a:I

    .line 1092
    iget-object v0, p0, Ladl;->b:Ladk;

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v1, v0, Ladk;->a:Ljava/io/ByteArrayOutputStream;

    .line 1093
    iget-object v0, p0, Ladl;->b:Ladk;

    const/4 v1, 0x0

    iput v1, v0, Ladk;->b:I

    .line 1094
    return-void
.end method

.method b()V
    .locals 4

    .prologue
    .line 1100
    iget-object v0, p0, Ladl;->b:Ladk;

    iget-object v0, v0, Ladk;->a:Ljava/io/ByteArrayOutputStream;

    .line 1101
    iget-object v1, p0, Ladl;->b:Ladk;

    iget v1, v1, Ladk;->b:I

    .line 1103
    iget-object v2, p0, Ladl;->b:Ladk;

    iget-object v3, p0, Ladl;->c:Ladm;

    iget-object v3, v3, Ladm;->a:Ljava/io/ByteArrayOutputStream;

    iput-object v3, v2, Ladk;->a:Ljava/io/ByteArrayOutputStream;

    .line 1104
    iget-object v2, p0, Ladl;->b:Ladk;

    iget-object v3, p0, Ladl;->c:Ladm;

    iget v3, v3, Ladm;->b:I

    iput v3, v2, Ladk;->b:I

    .line 1106
    iget-object v2, p0, Ladl;->c:Ladm;

    iput-object v2, p0, Ladl;->d:Ladm;

    .line 1109
    iget-object v2, p0, Ladl;->c:Ladm;

    iget-object v2, v2, Ladm;->c:Ladm;

    iput-object v2, p0, Ladl;->c:Ladm;

    .line 1110
    iget v2, p0, Ladl;->a:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Ladl;->a:I

    .line 1112
    iget-object v2, p0, Ladl;->d:Ladm;

    iput-object v0, v2, Ladm;->a:Ljava/io/ByteArrayOutputStream;

    .line 1113
    iget-object v0, p0, Ladl;->d:Ladm;

    iput v1, v0, Ladm;->b:I

    .line 1114
    return-void
.end method

.method c()V
    .locals 3

    .prologue
    .line 1120
    iget-object v0, p0, Ladl;->b:Ladk;

    iget-object v1, p0, Ladl;->d:Ladm;

    iget-object v1, v1, Ladm;->a:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    iget-object v2, p0, Ladl;->d:Ladm;

    iget v2, v2, Ladm;->b:I

    invoke-virtual {v0, v1, v2}, Ladk;->a([BI)V

    .line 1123
    const/4 v0, 0x0

    iput-object v0, p0, Ladl;->d:Ladm;

    .line 1124
    return-void
.end method

.method d()Ladn;
    .locals 2

    .prologue
    .line 1130
    new-instance v0, Ladn;

    iget-object v1, p0, Ladl;->b:Ladk;

    .line 2044
    invoke-direct {v0, v1}, Ladn;-><init>(Ladk;)V

    .line 1132
    iget-object v1, p0, Ladl;->b:Ladk;

    iget v1, v1, Ladk;->b:I

    .line 3044
    iput v1, v0, Ladn;->a:I

    .line 1133
    iget v1, p0, Ladl;->a:I

    .line 4044
    iput v1, v0, Ladn;->b:I

    .line 1135
    return-object v0
.end method
